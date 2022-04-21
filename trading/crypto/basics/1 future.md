### Summary (TL;DR)

Future trading in USDⓈ-Margined contract means settlement happens in USD-pegged assets like USDT or BUSD.
Future trading in Coin-Margined contract means denominated and settled in the underlying cryptocurrency.
The maintenance margin model is a sophisticated risk control system and a liquidation model to support high leverage trading.
The trader can use isolated Margin or Crossed Margin mode as per their trade requirement.
Funding rates are payments made to long or short traders, calculated on the difference between the perpetual contract price and spot price.

### What is Binance Futures?

The Binance USDT-Margined contract has the following characteristics:

Settlement happens in USD-pegged assets, i.e., and they are denominated and settled in USDT or BUSD.
The contract follows a Clear Pricing Rule where each future contract specifies the base asset’s quantity delivered for a single contract known as ‘’Contract Unit’’. For example – BTC/ USDT, ETH/ USDT, and BCH/ USDT.
Expiration – Perpetual and Quarterly
The minimum notional value of each order must be not less than the threshold of 5 USDT. The order will be rejected if the threshold is less.
In this case, “Reduce only” orders are not affected.

### Coin-Margined Future Contracts

 They are settled in cryptocurrency, i.e., they are denominated and settled in the underlying crypto. The trader doesn’t need to hold stablecoins as collateral.
 A contact multiplier represents the value of a contract. For example, each BTC futures contract represents 100 USD, while each ETH futures contract represents 10 USD.
 Expiration – Perpetual, Quarterly, and Bi-quarterly
 It is important to note that Binance futures will regularly adjust the minimum order threshold without prior intimation. Therefore, traders must check via API for details regularly.

### Features	COIN-Margined	USDⓈ-Margined

Collateral	Cryptocurrency (i.e. BTC, ETH)	USDT, BUSD
Margin Type	Isolate/ Cross	Isolate/ Cross
Cross collateral	No	Yes

### Leverage and Margin of contracts

Binance uses a Maintenance Margin model, a sophisticated risk control system, and a liquidation model to support high leverage trading. The maximum amount of leverage available depends on the notional value of the trader’s position, i.e., the more considerable the position, the lower the leverage.

Furthermore, the leverage can be adjusted according to the traders’ needs and will calculate position size based on the contract’s notional value (USDT or BUSD denominated). The Initial Margin is calculated as per the leverage selected by the trader.

### Difference between Isolated Margin and Cross Margin

Each trading pair has a separate Isolated Margin Mode. Only specific cryptocurrencies can be transferred in, held, and borrowed in one particular Isolated Margin Mode. For instance, in the BTCUSDT Isolated Margin Mode, only BTC and USDT are accessible. You may choose the isolated mode for several trades.

Margin in cross margin mode is shared among the user’s Margin trade. All positions share assets in cross-margin reports. The margin level is calculated according to the total asset value and debt in the account. To learn more, read what is margin trading?

Furthermore, if the trader has an open position in Isolated Margin Mode, they cannot lower the leverage. Moreover, *Cross Margin Mode can only be shared with the same type of asset*. So, for example, in Cross Margin Mode, all BUSD in USDⓈ-M Futures Wallet can be used for all BUSD -margined contracts.

### What happens in case of Liquidation?

Binance will use the Mark Price to avoid unnecessary liquidation and to combat market manipulations. Liquidation occurs when the Mark Price hits the Liquidation price of the position. A liquidation is triggered when,

*Collateral = Initial Collateral + Realized PnL + Unrealized PnL < Maintenance Margin*

### Perpetual Contract Vs Traditional Futures Contract

The difference between a perpetual contract and a traditional one is that the perpetual contract doesn’t have an expiry date or settlement date, which is a defining feature of conventional contracts. Instead, funding is used to keep a long-term convergence between a perpetual contract and the Mark Price.

A perpetual contract will mimic the movement of the Spot Price of underlying crypto without the need to having the delivery of the said asset. To learn more, read our guide to Futures trading.

### What is Auto-Deleveraging (ADL)?

ADL is the final step when the Insurance Fund cannot accept the bankrupt client’s positions. Binance has several features like Immediate Cancel Limit Order and others before ADL needs to be implemented and reduce the impact created by ADL. However, it is difficult to avoid any auto-deleverage liquidation due to the high volatility of the cryptocurrency markets.

### Binance Futures Trading: Fees Schedule


Calculating the commission of COIN-Margined Futures

Commission fee = notional value x fee rate

Notional value = (number of contracts x contract size) / trade price

For example,

VIP 0 marker commission: 0.015%; taker commission: 0.040%

Buy 10 BTCUSD 0925 quarterly contract using Market order: Notional value = (number of contracts x contract size) / opening price
= (10 Cont x 100 USD) / 10,104 USD = 0.09897 BTC
Taker commission fee is paid: 0.09897 x 0.040% = 0.00003959 BTC
After the price rises, Sell 10 BTCUSD 0925 quarterly contract using Limit order:
Notional value = (number of contracts x contract size) / closing price
= (10 Cont x 100 USD) / 11,104 USD = 0.09 BTC
Maker commission fee is paid: 0.09 x 0.015% = 0.00001351 BTC

Please note that a flat 0.015% settlement fee for quarterly delivery contracts is charged for all positions settled on the delivery date. Below is the tier-based trading fee:

### How to Borrow funds using Cross Collateral?

  The trader can click on “Futures” from the drop-down under the heading “Wallet” once they log into the account.
  From here, choose the “Cross Collateral” function in your futures wallet interface. For example, Binance provides collateral for BUSD, BTC, ETH, and EUR for this function.
  Enter the amount of USDT you would like to borrow. Then, click on “Start Borrowing” once you have confirmed. The amount of USDT burrowed *will be transferred to the future wallet*, while the collateral amount of BUSD, BTC, ETH, or EUR will be deducted from the spot wallet.

- With BNB Binance provides its users with a 10% discount on the standard trading fees using BNB to pay the fees. However, users will have to transfer BNB from their Spot Wallet to their Future Wallet to receive the 10% discount.
-
### What is Hedge Mode?

With Hedge Mode, the trader can hold positions in both long and short directions at the same time under the same contract. Whereas in a One-Way Mode, the traders can hold a position in one direction only under one contract. This can help you in preventing liquidations while using cross margin mode.
What is Binance BTCDOM Index?

Binance BTCDOM Index is a cryptocurrency price index reflecting the market dominance performance of Bitcoin.

### A quarterly futures contract

is an agreement to buy or sell an underlying asset at a predetermined price at a specified time (delivery date) in the future. Unlike perpetual futures contracts, quarterly futures contracts have an expiration date.
When the quarterly futures contract is due, both the contract buyer (in a long position) and the seller (in a short position) are obligated to execute the contract regardless of the underlying asset’s price. The buyer gains if the settlement price is higher than the entry price, while the seller gains if the settlement is lower than the entry price.

BTCUSD Quarterly 0925 Futures Contracts
The first quarterly futures contract launched by Binance Futures was the BTCUSD Quarterly 0925. The ticker name indicates the underlying asset and expiry date.

BTCUSD Quarterly 0925 futures contracts are quoted and settled in the denominated BTC tokens. BTCUSD Quarterly 0925 futures contracts use BTC tokens as collateral. To cover this collateral, you must have BTC tokens before you begin trading.

BTCUSD Quarterly 0925 futures contracts expire on the Friday of the corresponding three-month period. In this example, the expiration date was 25 September 2020 at 08:00:00 UTC. Settlement fee is charged as the same as taker fee for all positions settled on the delivery date.
Quarterly futures on Binance are cash-delivered contracts, also known as cash settlement. When the contract is due, buyers and sellers do not exchange the underlying asset directly. Instead, the futures exchange delivers all open positions at a settlement price (index-based last-hour moving average price).
Should we offer more quarterly futures contracts for trading, we will make an official announcement in advance.
Contract Specifications of BTCUSD Quarterly 0925 Futures Contracts

    Size Unit:

Binance Futures uses “contract” as a standardized size unit when describing a contract’s position size. For example, below are ten BTCUSD Quarterly 0925 contracts long and 20 BTCUSD Quarterly 0925 contracts short.

    Contract Multiplier:

The contract multiplier represents the value of a contract. Each BTCUSD Quarterly 0925 contract represents 100 USD. The positions above show 1,000 USD of BTCUSD Quarterly 0925 long (100 USD x 10 contracts) and 2,000 USD of BTCUSD Quarterly 0925 short (100 USD x 20 contracts).

    Notional Value:

Notional value is the contract value of a futures contract. The notional value of BTCUSD Quarterly 0925 is denominated in BTC.
The contract’s notional value is calculated by multiplying the contract unit by the contract multiplier and divided by mark price. Binance Futures uses notional value to calculate the required margin, trading fee, delivery fee, and PNL.
For example, the notional value of BTCUSD Quarterly 0925 long is
(Contract Size x Contract Multiplier) / Mark Price
= (10 Contracts x 100 USD) / 10,104 USD
= 0.09897 BTC (at the the image was taken)

    Unrealized and Realized PNL

Realized PNL refers to profits and losses incurred from completed trade transactions. Unrealized PNL refers to profits and losses associated with transactions not yet completed.
For example, when User A opens ten contracts of BTCUSD Quarterly 0925 long, the unrealized PNL would be 0.0007 BTC. Once User A has closed the position, only User A is said to have earned 0.0007 BTC of realized PNL.
Unrealized PNL (BTC)
= Contract Size x Contract Multiplier x (1 / Entry Price - 1 / Mark Price)
= 10 Contracts x 100 USD x (1 / 10,104 USD - 1 / 10,175.8 USD)
= 0.0007 BTC
For more contract specifications, kindly refer to the Contract Specifications of Quarterly Futures Contract.
For further information on Binance’s quarterly futures, our Academy explains more: Quarterly Futures: What Are They And How To Trade Them?
Risk Warning: Futures trading carries substantial risk. While there is the potential for significant profits, losses can also be substantial too.

The introduction of BTC/USD contracts brings our range of derivative products to four broad classes, allowing users to trade conveniently on a single platform and according to their trading preferences:

    Quarterly Futures

Token margined, with quarterly expiration and settlement. Trade with up to 125x leverage.

    Perpetual Futures

USDT margined, with no expiration. Trade with up to 125x leverage.

    Leveraged Tokens

Unique variable target leverage range of 1.5 - 3x.

    Binance Options
