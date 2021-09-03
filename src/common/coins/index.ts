import BTC from './BTC'
import ETNX from './ETNX'
import ETNXP from './ETNXP'
import LTNX from './LTNX'
import GLDX from './GLDX'
import CRFI from './CRFI'
import BABYDOGE from './BABYDOGE'
import LTC from './LTC'
import GHOST from './GHOST'
import NEXT from './NEXT'

const coins = {
  [BTC.ticker]: BTC,
  [LTC.ticker]: LTC,
  [GHOST.ticker]: GHOST,
  [NEXT.ticker]: NEXT,
  [ETNX.ticker]: ETNX,
  [ETNXP.ticker]: ETNXP,
  [LTNX.ticker]: LTNX,
  [GLDX.ticker]: GLDX,
  [CRFI.ticker]: CRFI
}

export default coins
