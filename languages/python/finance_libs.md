* fetching data
* visualization, drawing chart
* deep learning
* trading-bot

### fetching data
- [yfinance](https://github.com/ranaroussi/yfinance): 6k stars Yahoo! Finance market *data downloader*. already set date as index. very convenient
- python-binance: 4k stars Binance Exchange API python implementation for automated trading


### finance

- *pandas-ta*: Indicators in Python are tightly correlated with the de facto TA Lib if they share common indicators.
If TA Lib is also installed, TA Lib computations are enabled by default but can be disabled disabled per indicator by using the argument talib=False.

- *mplfinance*: 1.5k stars. preferred use this
    - plot the data, static data visuallization

    - plot trading signals, and/or addtional user-defined data.

    - Also provide visually analysis in the form of common technical studies, such as: moving averages, renko, etc.

### jupyter text
```shell
# convert notebook.ipynb to a .py file
jupytext --to py notebook.ipynb

# convert notebook.py to an .ipynb file with no outputs
jupytext --to notebook notebook.py

# convert notebook.py to an .ipynb file and run it
jupytext --to notebook --execute notebook.py

`
