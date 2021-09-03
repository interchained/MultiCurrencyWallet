import BTC from './BTC'
import ETNX from './ETNX'
import LTC from './LTC'
import GHOST from './GHOST'
import NEXT from './NEXT'

const coins = {
  [BTC.ticker]: BTC,
  [LTC.ticker]: LTC,
  [GHOST.ticker]: GHOST,
  [NEXT.ticker]: NEXT,
  [ETNX.ticker]: ETNX
}

export default coins
