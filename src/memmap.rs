use std::convert::TryFrom;

#[derive(Debug)]
pub enum MemMap {
    Prog(u32),
    AuxData(u32),
    MsgData(u32),
}

const MASK: u32 = !(0b11 << 30);

impl TryFrom<u32> for MemMap {
    type Error = &'static str;

    fn try_from(value: u32) -> Result<Self, Self::Error> {
        // Highest two bits are the enum
        match value >> 30 {
            2 => Ok(MemMap::AuxData(value & MASK)),
            1 => Ok(MemMap::MsgData(value & MASK)),
            0 => Ok(MemMap::Prog(value & MASK)),
            _ => Err("bad bit descriptor in memmap"),
        }
    }
}
