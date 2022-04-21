### Liquidation

Binance uses the Mark Price to avoid unnecessary liquidations and to combat market manipulation.
What is the difference between Mark Price and Last Price?
To avoid spikes and unnecessary liquidations during periods of high volatility, Binance Futures uses Last Price and Mark Price.
Last Price refers to the latest transaction price the contract was traded at. In other words, the last trade in the trading history defines the Last Price. It’s used for calculating your realized PnL (Profit and Loss).
On the other hand, Mark Price is calculated using a combination of funding data and a basket of price data from multiple spot exchanges. Your liquidation prices and unrealized PnL are calculated based on the Mark Price.
Risk and leverage are adjusted based on the user’s absolute exposure; the larger the position, the higher the required margin, and the lower the leverage. A liquidation is triggered when:
Collateral = Initial Collateral + Realized PnL + Unrealized PnL < Maintenance Margin
It is important to note that the maintenance margin change will directly affect liquidation price. To avoid being liquidated (i.e. margin ratio hits 100%), please add more margin or reduce your positions. It is recommended to control the margin ratio below 80%.
Liquidation Price
Liquidation occurs when the Mark Price hits the liquidation price of a position. Traders are advised to pay close attention to the movements of the Mark Price and the liquidation price to avoid being liquidated.

In hedge mode, both long and short positions of the same contract share the same liquidation price in cross margin mode.

If both long and short positions of the same contract are in isolated mode, the positions will have two different liquidation prices depending on the margin allocated to the positions.
Binance allows highly leveraged trading by using a sophisticated risk engine and liquidation model. The liquidation model might be intricate. Alternatively, you could use the built-in calculator to calculate the liquidation price.
To find more about the calculation of Liquidation Price, please refer to:
How to Calculate Liquidation Price of USDⓈ-M Futures Contracts
How to Calculate Liquidation Price of COIN-M Futures Contracts
What happens during liquidation?
During the liquidation process, all open orders are immediately canceled. All users will be subjected to the same liquidation protocols referred to as “Smart Liquidation.” Binance avoids full liquidation of a user’s position whenever possible. For any traders that are cleared via forced liquidation and not by an order issued by the user, a liquidation fee will be charged on the amount liquidated only (not the notional value of the position).
It is important to mention that, as a general rule, users who hold small positions that enter liquidation are highly likely to be entirely liquidated. Users with larger accounts will see a smaller percentage of their accounts liquidated compared to smaller users. This is because Maintenance Margin is based on a user’s position size and not their leverage selection. As a result, the effective Maintenance Margin for smaller users is lower than the liquidation fee rate. As such, they are already bankrupt when first entering liquidation, regardless of the final price when clearing.
Liquidation orders
Note that all orders for liquidations are Immediate or Cancel orders. The order will fill as much as possible and cancel the rest. This is different from a Fill or Kill order which will only execute if the order can be completely executed, and will be canceled, if otherwise. The remaining positions will be either assigned to the Insurance Fund or counter-party liquidated.
The system will first cancel all open orders for all traders, then attempt to reduce the user’s margin usage with one single large Immediate or Cancel order without fully liquidating the user. If the user is margin compliant after accounting for realized losses and liquidation fee deductions, the liquidation is over. If the user is still margin deficient, the user’s position will be closed at the bankruptcy price, and the Insurance Fund will take over the position, and the user is declared bankrupt. A portion of the remaining collateral (if any) will go to the Insurance Fund. If an account becomes bankrupt (negative wallet balance), the Insurance Fund will payout to balance the account back to 0.
Automated Negative Balance Clearance
When a user’s account balance falls into negative equity, Binance will use the Insurance Fund to cover the deficit losses in the user’s account. The automated negative balance clearance will be performed every ten minutes.
Please note the negative account balances will be automatically cleared for users who meet all the requirements below:

    Multi-assets mode is not activated.
    For negative balances in USDⓈ-margined accounts, there are no open positions (cross or isolated) in the account.
    For negative balances in Coin-margined accounts, there are no open positions (cross or isolated) in the account.
    The user did not transfer him/herself to deficit losses in his/her account after liquidation.

In cases where you did not meet the criteria as stated above, please contact our Customer Service agents for assistance.
Insurance Clear Fee
When a user's position is liquidated, a certain percentage of the Insurance Clear fee will be collected and contributed to Insurance Fund reserves, marked as ''Insurance Clear'' in the Transaction History.
Since the liquidation price will not change, it is recommended that users strictly control their position risks to avoid liquidation.
For insurance clearance fees, please refer to the trading rules page.
Please note:

    Bankruptcy prices may be out of the contract’s market price range.
    We will send margin call and liquidation call notifications by mail, text message, and internal message. The notifications serve as a risk warning and cannot guarantee timely delivery. You agree that during your use of the Service, under certain circumstances (including due to personal network congestion and poor network environment), users may be unable or delayed to receive SMS or e-mail reminders. Binance reserves the right with no obligation to deliver notifications.

*Disclaimer: The numbers in this article are subject to change without further notice. Please refer to the English version for the most updated numbers.
