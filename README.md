# 

![Market Wizards](http://www.marketwizards.io/market-wizards-rebirth.png)

## Overview

The marketwizards.io implementation aims to provide Ethereum blockchain data in a HIVE format which is easily consumable for report generations by businesses really world-wide. 

## Making Accessible Ethereum Blockchain Data

Usually in order to export the Ethereum data into CSV/HIVE Format it is necessary run a full ethereum node which has been synchronised in consensus with the entire network, and with RPC support. In addition the geth RPC service must be queried block  by block, to produce the blockchain data including all it's receipts in raw CSV format, either by ethereum-etl project, or using alternatives such as the ethereum presto-db connector which allow direct SQL to RPC translation querying against go-ethereums RPC port without requiring CSV or Hive Data. This may be more suitable for smaller queries, but at scale very large presto-db (amazon athena) clusters are required to manage large queries efficiently. 

Nonetheless both processes, unless ran in cloud, and even then, are quite time consuming and laborious for your average business user. This is something that with time will become a greater and greater challenge for the individual server and large cloud alike. We provide this data freely via our mwclient. Presently only ethereum data is available though there is plans to refactor once our prototype is polished.

## Extracting the Blockchain Data

![diagram](https://www.marketwizards.io/diagram_geth_rpc.png)

> We utilize several open source implementations to make this data available thru our tool. Please note that this software is pre alpha and is a prototype. It is provided as-is and without warrantee or guarantee of any kind.

### Goal

The goal is to **substantially decrease the time taken to access Ethereum and eventually other blockchain chaindata**. The market wizards blockchain manager is designed to be used in single-report generated examples, as well as part of automation for larger clusters used by us in house, i.e. situations where there is valid reasoning and justification to create automation and centralized distribution of hive data, to each worker, i.e. synchronise the blockchain data in HIVE CSV format with each co-ordinator must be done in some way. Eventually we aim to provide consensus based GPG key signed datasets, which are both validated by the full blockchain as well as easily accessible for wider distribution in readable formats.

Ansible support is intended, however for now, the mwclient script must be called directly as the user which runs presto, and the path ~USER/.marketwizards must be set for the HIVE DATA source within presto-db as the hive data source presently.

This is a testing implementation and therefore should be until a later time, be treated as such.


## Installation & Configuration

### Cloning Repo & Pre-configuration Set-up

Standby for more updates as we develop a second prototype.

#### Dependencies



### Configuration Explanation

[Placeholder]


#### Links and Email

For comments or for contact please reach out to adam market wizards dawt io.
