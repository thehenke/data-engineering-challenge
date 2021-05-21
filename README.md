# Desafio de Engenharia de Dados

## Seja bem vindo ao teste de Engenheiro de Dados

<h1>Estrutura do projeto</h1>

📦data-engineering-challenge
 ┣ 📂.git
 ┃ ┣ 📂hooks
 ┃ ┃ ┣ 📜applypatch-msg.sample
 ┃ ┃ ┣ 📜commit-msg.sample
 ┃ ┃ ┣ 📜fsmonitor-watchman.sample
 ┃ ┃ ┣ 📜post-update.sample
 ┃ ┃ ┣ 📜pre-applypatch.sample
 ┃ ┃ ┣ 📜pre-commit.sample
 ┃ ┃ ┣ 📜pre-merge-commit.sample
 ┃ ┃ ┣ 📜pre-push.sample
 ┃ ┃ ┣ 📜pre-rebase.sample
 ┃ ┃ ┣ 📜pre-receive.sample
 ┃ ┃ ┣ 📜prepare-commit-msg.sample
 ┃ ┃ ┣ 📜push-to-checkout.sample
 ┃ ┃ ┗ 📜update.sample
 ┃ ┣ 📂info
 ┃ ┃ ┗ 📜exclude
 ┃ ┣ 📂logs
 ┃ ┃ ┣ 📂refs
 ┃ ┃ ┃ ┣ 📂heads
 ┃ ┃ ┃ ┃ ┗ 📜main
 ┃ ┃ ┃ ┗ 📂remotes
 ┃ ┃ ┃ ┃ ┗ 📂origin
 ┃ ┃ ┃ ┃ ┃ ┣ 📜HEAD
 ┃ ┃ ┃ ┃ ┃ ┗ 📜main
 ┃ ┃ ┗ 📜HEAD
 ┃ ┣ 📂objects
 ┃ ┃ ┣ 📂0b
 ┃ ┃ ┃ ┗ 📜8f0770f0be8ad823dcbabf54a1275e9eb6285c
 ┃ ┃ ┣ 📂16
 ┃ ┃ ┃ ┗ 📜86d09ebda981e4dc659b211fd8317644cc4224
 ┃ ┃ ┣ 📂19
 ┃ ┃ ┃ ┗ 📜d3fd7b7d383d4a56e7c1be9fe3ca1bb4f4d960
 ┃ ┃ ┣ 📂1b
 ┃ ┃ ┃ ┣ 📜07da33b6d0dbc8414e82c5ffd1f6aa722daeaf
 ┃ ┃ ┃ ┗ 📜bc423af8506c476438f15e7ac79b296255f14f
 ┃ ┃ ┣ 📂1d
 ┃ ┃ ┃ ┣ 📜11300854dd11abecc677884a0f8588a6e3ac49
 ┃ ┃ ┃ ┗ 📜8ec7143cd2566f01fd69fa02a5208198f63bcb
 ┃ ┃ ┣ 📂1f
 ┃ ┃ ┃ ┣ 📜3ac3a5ec87ae40582ad7aed6dfcbd27262f00b
 ┃ ┃ ┃ ┗ 📜7927552857f4ef6963c4e2d3271cb240688ed0
 ┃ ┃ ┣ 📂24
 ┃ ┃ ┃ ┗ 📜4bfb99bee55a06a989a146137f5067f68463d4
 ┃ ┃ ┣ 📂2d
 ┃ ┃ ┃ ┗ 📜268a46bc5adab4d3b26bd5b084b561f2c94112
 ┃ ┃ ┣ 📂34
 ┃ ┃ ┃ ┗ 📜42f84b30804caf672f5522ed88e5443500d70b
 ┃ ┃ ┣ 📂37
 ┃ ┃ ┃ ┗ 📜d0a8a3cb978dac63bdc08064864f0b902f58e4
 ┃ ┃ ┣ 📂39
 ┃ ┃ ┃ ┣ 📜114bbb9fc902dc4e9a1370d5af584d9adfe7db
 ┃ ┃ ┃ ┗ 📜d7c109e2e6a91319dcadd0abbc5f45da69bb89
 ┃ ┃ ┣ 📂3b
 ┃ ┃ ┃ ┗ 📜b7afb12739498d7b5354c336a0599941c871b2
 ┃ ┃ ┣ 📂3f
 ┃ ┃ ┃ ┗ 📜f641de11c3fad534bb87202d5c4ac3a6a0ff67
 ┃ ┃ ┣ 📂40
 ┃ ┃ ┃ ┗ 📜5d6b9c1a6fcea6d448a365a728df708cf03327
 ┃ ┃ ┣ 📂45
 ┃ ┃ ┃ ┗ 📜94dfdf29a646bd2fd1c780b2a047abdf5e604a
 ┃ ┃ ┣ 📂47
 ┃ ┃ ┃ ┗ 📜d67c6f4ab6b61b8dcf9dc328959a7a8e4fe9aa
 ┃ ┃ ┣ 📂48
 ┃ ┃ ┃ ┗ 📜e14c32e134e2555544e9d849b567e78441bf80
 ┃ ┃ ┣ 📂4e
 ┃ ┃ ┃ ┗ 📜c2c98ae61e4b51c8021b9074efefa2080e8fda
 ┃ ┃ ┣ 📂51
 ┃ ┃ ┃ ┗ 📜f8d4dac7548fb056ac57c21995e2b95e1685a4
 ┃ ┃ ┣ 📂53
 ┃ ┃ ┃ ┗ 📜12c18d9f9db65f9920b9e8f7a2ae64d729f1d6
 ┃ ┃ ┣ 📂58
 ┃ ┃ ┃ ┗ 📜43d5ce4ecd9a5a9843860633864f1106411527
 ┃ ┃ ┣ 📂64
 ┃ ┃ ┃ ┗ 📜5ddfb4b6870da36cf09b8aa2851d2d1e4cabd8
 ┃ ┃ ┣ 📂67
 ┃ ┃ ┃ ┗ 📜3609ca58e38033f14abc05d8f909841512b7ba
 ┃ ┃ ┣ 📂6b
 ┃ ┃ ┃ ┗ 📜da1557d42cca9606351f51d8b71ff971cb5bae
 ┃ ┃ ┣ 📂6d
 ┃ ┃ ┃ ┗ 📜96dfe7a89220c4a2928d60907a18f70bdb5352
 ┃ ┃ ┣ 📂72
 ┃ ┃ ┃ ┗ 📜d0150d1d9c033b49fa19a404aa46a2f27f28b3
 ┃ ┃ ┣ 📂73
 ┃ ┃ ┃ ┗ 📜747b0181e044aa06694b6549523af3fa650e8e
 ┃ ┃ ┣ 📂7d
 ┃ ┃ ┃ ┗ 📜159a7027e427788e9e2f69de9c1033498fe248
 ┃ ┃ ┣ 📂81
 ┃ ┃ ┃ ┗ 📜662a1ca91b25c9cb8e68b1009e8075b17c0b64
 ┃ ┃ ┣ 📂82
 ┃ ┃ ┃ ┗ 📜49d88034e58860ad4bf28053b360359a13a4fa
 ┃ ┃ ┣ 📂86
 ┃ ┃ ┃ ┗ 📜5601960b9f88215422b003e33c38672c17feec
 ┃ ┃ ┣ 📂87
 ┃ ┃ ┃ ┣ 📜6d4937f68c8b9f5d4ff846ce73f40b358783ae
 ┃ ┃ ┃ ┗ 📜75107b06026612d84fef1d6b559e4b668c78e1
 ┃ ┃ ┣ 📂8b
 ┃ ┃ ┃ ┗ 📜fd0425df76faf8258cf3e8014cbbb641c596a8
 ┃ ┃ ┣ 📂8e
 ┃ ┃ ┃ ┗ 📜26a3cbfc3cb71d584ab79bcbdbbdc801abb4c7
 ┃ ┃ ┣ 📂8f
 ┃ ┃ ┃ ┗ 📜569556c31bac77e5ded743f0f452a6b582f2cd
 ┃ ┃ ┣ 📂96
 ┃ ┃ ┃ ┗ 📜89deff73d6e180e8554cc7af65ce30869b81c5
 ┃ ┃ ┣ 📂99
 ┃ ┃ ┃ ┗ 📜a36fdc472b43b509ef423e4d7fcef2899ade80
 ┃ ┃ ┣ 📂9c
 ┃ ┃ ┃ ┗ 📜5f4d06a79674b657f418ec62d89c89c4556615
 ┃ ┃ ┣ 📂a9
 ┃ ┃ ┃ ┣ 📜8e61cd566c40bb3added4242805eef80ffd75f
 ┃ ┃ ┃ ┗ 📜ec200113d8f77dda65cfeb4f259cc8e1b4c9bf
 ┃ ┃ ┣ 📂aa
 ┃ ┃ ┃ ┗ 📜9ba7b8f4d92c8a4ffa57941192fc5594bd233e
 ┃ ┃ ┣ 📂ac
 ┃ ┃ ┃ ┗ 📜1356753c64506cd468d252597b6ff0d4b0a2c5
 ┃ ┃ ┣ 📂b1
 ┃ ┃ ┃ ┗ 📜8b55641db10065ae01e553850ec18481aefd03
 ┃ ┃ ┣ 📂bb
 ┃ ┃ ┃ ┗ 📜f94da657e3909c7ad7b7ff7d2f69850f03f31e
 ┃ ┃ ┣ 📂bd
 ┃ ┃ ┃ ┗ 📜09d1d5ed4f7cf14c8cce9ec78a0707b2f7d855
 ┃ ┃ ┣ 📂be
 ┃ ┃ ┃ ┗ 📜9b4ee3cec1bbf30cac0e31c3130566124004b3
 ┃ ┃ ┣ 📂c0
 ┃ ┃ ┃ ┣ 📜2c4907c43db4b76670518d33c108347599994b
 ┃ ┃ ┃ ┗ 📜4c3d040f1a66310f862af15a06e21169d5e81c
 ┃ ┃ ┣ 📂c2
 ┃ ┃ ┃ ┗ 📜92505eab254dcf48e273db60d1091b762d2083
 ┃ ┃ ┣ 📂c6
 ┃ ┃ ┃ ┗ 📜a44439512fbf950583f34f05a48e5ab3363602
 ┃ ┃ ┣ 📂cb
 ┃ ┃ ┃ ┗ 📜4128fe3eaa2bce7658d36c8a25025d7b4af85d
 ┃ ┃ ┣ 📂d2
 ┃ ┃ ┃ ┣ 📜1d26c4aab3a32262e996f722af3fe12edd0714
 ┃ ┃ ┃ ┗ 📜2190043f687127bb1c50f56d421f67f8eb1f16
 ┃ ┃ ┣ 📂d3
 ┃ ┃ ┃ ┗ 📜c2b0abdda50b9037878ce4b8a9b38ffa77da35
 ┃ ┃ ┣ 📂da
 ┃ ┃ ┃ ┗ 📜854fb164fb647e649f7e9c99f7a6bdf89ee1c5
 ┃ ┃ ┣ 📂e3
 ┃ ┃ ┃ ┗ 📜c1b0638ceb97054bba00fc385c6a4b5e0c2e1d
 ┃ ┃ ┣ 📂e5
 ┃ ┃ ┃ ┗ 📜76fe76c1fc5d53ea1ad145749423835aeb27d2
 ┃ ┃ ┣ 📂e6
 ┃ ┃ ┃ ┗ 📜9de29bb2d1d6434b8b29ae775ad8c2e48c5391
 ┃ ┃ ┣ 📂eb
 ┃ ┃ ┃ ┗ 📜d679ac8a6577bd2d108b66cee5860359f00b9a
 ┃ ┃ ┣ 📂f0
 ┃ ┃ ┃ ┗ 📜c2c76fb0007d7760b50c188bfc7d6de110cbe2
 ┃ ┃ ┣ 📂f1
 ┃ ┃ ┃ ┗ 📜3eaa0ab0d810e0f5081fba6604fd43aaed2a7f
 ┃ ┃ ┣ 📂fc
 ┃ ┃ ┃ ┗ 📜a8d9369df8c40797f8b20310983b5bc23a420f
 ┃ ┃ ┣ 📂info
 ┃ ┃ ┗ 📂pack
 ┃ ┃ ┃ ┣ 📜pack-275868733715a1274367f11252776428a08c68cd.idx
 ┃ ┃ ┃ ┗ 📜pack-275868733715a1274367f11252776428a08c68cd.pack
 ┃ ┣ 📂refs
 ┃ ┃ ┣ 📂heads
 ┃ ┃ ┃ ┗ 📜main
 ┃ ┃ ┣ 📂remotes
 ┃ ┃ ┃ ┗ 📂origin
 ┃ ┃ ┃ ┃ ┣ 📜HEAD
 ┃ ┃ ┃ ┃ ┗ 📜main
 ┃ ┃ ┗ 📂tags
 ┃ ┣ 📜COMMIT_EDITMSG
 ┃ ┣ 📜config
 ┃ ┣ 📜description
 ┃ ┣ 📜HEAD
 ┃ ┣ 📜index
 ┃ ┗ 📜packed-refs
 ┣ 📂anayltics
 ┃ ┣ 📜queries.py
 ┃ ┗ 📜visualization.ipynb
 ┣ 📂config
 ┃ ┗ 📜dbconnection.py
 ┣ 📂data
 ┃ ┣ 📜Person.Person.csv
 ┃ ┣ 📜Production.Product.csv
 ┃ ┣ 📜Sales.Customer.csv
 ┃ ┣ 📜Sales.SalesOrderDetail.csv
 ┃ ┣ 📜Sales.SalesOrderHeader.csv
 ┃ ┗ 📜Sales.SpecialOfferProduct.csv
 ┣ 📂model
 ┃ ┣ 📜final.sql
 ┃ ┣ 📜MER.mwb
 ┃ ┣ 📜MER.mwb.bak
 ┃ ┣ 📜script.sql
 ┃ ┣ 📜structure.sql
 ┃ ┣ 📜structure2.sql
 ┃ ┣ 📜structure3.sql
 ┃ ┣ 📜structure4.sql
 ┃ ┗ 📜structure5.sql
 ┣ 📂pipelines
 ┃ ┣ 📜customer.py
 ┃ ┣ 📜person.py
 ┃ ┣ 📜product.py
 ┃ ┣ 📜sales_order_detail.py
 ┃ ┣ 📜sales_order_header.py
 ┃ ┗ 📜sales_special_offer_product.py
 ┣ 📜index.py
 ┗ 📜README.md



Person > Customer > Product > Special Offer Product > SalesOrderDetail > SalesOrderHeader

