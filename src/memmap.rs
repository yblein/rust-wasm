use std::convert::TryFrom;

pub enum MemMap {
    Prog(usize),
    ContractData(usize),
    MsgData(usize),
}

const MASK: usize = !(0b11 << 30);

impl TryFrom<usize> for MemMap {
    type Error = &'static str;

    fn try_from(value: usize) -> Result<Self, Self::Error> {
        // Highest two bits are the enum
        match value >> 30 {
            2 => Ok(MemMap::ContractData(value & MASK)),
            1 => Ok(MemMap::MsgData(value & MASK)),
            0 => Ok(MemMap::Prog(value & MASK)),
            _ => Err("bad bit descriptor in memmap"),
        }
    }
}
