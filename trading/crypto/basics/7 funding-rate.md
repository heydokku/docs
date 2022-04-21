### 1. What is Funding Rate?

Funding rates are periodic payments made to either long or short traders, calculated based on the difference between the perpetual contract prices and spot prices. When the market is bullish, the funding rate is positive and tends to rise over time. In these situations, traders who are long on a perpetual contract will pay a funding fee to traders on the opposing side. Conversely, the funding rate will be negative when the market is bearish, where traders who are short on a perpetual contract will pay a funding fee to long traders.

### 2. Why is the Funding Rate important?

The funding rate is primarily used to force convergence of prices between the perpetual contract and the underlying asset.
Unlike traditional futures, perpetual contracts have no expiration date. Thus, traders can hold positions to perpetuity unless he gets liquidated. As a result, trading perpetual contracts are very similar to spot trading pairs.
As such, crypto exchanges created a mechanism to ensure that perpetual contract prices correspond to the index. This is known as Funding Rate.

### 3. How are Funding Rates calculated on Binance?

Funding rates are calculated using the following formula:
Funding Amount = Nominal Value of Positions × Funding Rate
(Nominal Value of Positions = Mark Price x Size of a Contract)
Please note that Binance takes no fees from funding rate transfers as funding fees are transferred directly between traders.
Funding payments occur every 8 hours at 00:00 UTC; 08:00 UTC and 16:00 UTC for all Binance Futures perpetual contracts. Traders are only liable for funding payments in either direction if they have open positions at the pre-specified funding times. If traders do not have a position, they are not liable for any funding. If you close your position prior to the funding time, you will not pay or receive any funding.
There is a 15-second deviation in the actual funding fee transaction time. For example, when a trader opens a position at 08:00:05 UTC, the funding fee could still apply to the trader (either paying or receiving the funding fee).

### 4. What determines the Funding Rate?

There are two components to the Funding Rate: the Interest Rate and the Premium. The Premium is the reason why the price of the perpetual contract will converge with the price of the underlying asset.
Binance uses a flat interest rate, with the assumption that holding cash equivalent returns a higher interest than the BTC equivalent. The difference is stipulated to be 0.03% per day by default (0.01% per funding interval since funding occurs every 8 hours) and may change depending on market conditions, such as the Federal Funds Rate.
There may be a significant difference in price between the perpetual contract and the Mark Price. On such occasions, a Premium Index will be used to enforce price convergence between the two markets. The Premium Index history can be viewed here. It is calculated separately for every contract:
Premium Index (P) = [Max(0, Impact Bid Price - Price Index ) - Max(0, Price Index - Impact Ask Price)] / Price Index
Impact Bid Price = The average fill price to execute the Impact Margin Notional on the Bid Price
Impact Ask Price = The average fill price to execute the Impact Margin Notional on the Ask Price

    *Price Index* is a basket of prices from the major spot market exchanges, weighted by their relative volume.
    *The Impact Margin Notional (IMN) for USDT-Margined Contracts* is the notional available to trade with 200 USDT worth of margin (price quote in USDT); for Coin-Margined Contracts, it is the notional available to trade with 200 USD worth of margin (price quote in USD). IMN is used to locate the average Impact Bid or Ask price in the order book.

Impact Margin Notional (IMN) = 200 USDT / Initial margin rate at maximum leverage level
For example, the maximum leverage of BTCUSDT perpetual contract is 125x, and its corresponding Initial Margin Rate is 0.8%, then the Impact Margin Notional (IMN) is 25,000 USDT (200 USDT / 0.8%), and the system will take an IMN of 25,000 USDT every minute in the order book to measure the average Impact Bid/Ask price.
