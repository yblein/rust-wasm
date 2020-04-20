use std::convert::TryFrom;

#[derive(Debug)]
pub enum MemMap {
    Prog(usize),
    AuxData(usize),
    MsgData(usize),
}

const MMAP_MASK: usize = 0b111 << 29;
const IS_MAPPED_MASK: usize = 0b1 << 31;

impl TryFrom<usize> for MemMap {
    type Error = &'static str;

    fn try_from(value: usize) -> Result<Self, Self::Error> {
        // Highest bit determines if Prog or not, lower two
        // determine which region if highest bit set
        match value & IS_MAPPED_MASK {
            1 => Ok(MemMap::MsgData(value & !IS_MAPPED_MASK)),
            v if v > 0 => match (value & !IS_MAPPED_MASK) >> 29 {
                1 => Ok(MemMap::MsgData(value & !MMAP_MASK)),
                0 => Ok(MemMap::AuxData(value & !MMAP_MASK)),
                _ => Err("bad bit descriptor in memmap"),
            },
            _ => Ok(MemMap::Prog(value)),
        }
    }
}
