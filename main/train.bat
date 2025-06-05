@echo off

:: task=classification  :: target is a binary value (e.g., drug or not).
:: dataset=hiv

set task=regression
set dataset=photovoltaic

set radius=1
set dim=50
set layer_hidden=6
set layer_output=6

set batch_train=32
set batch_test=32
set lr=1e-4
set lr_decay=0.99
set decay_interval=10
set iteration=2

set setting=%dataset%--radius%radius%--dim%dim%--layer_hidden%layer_hidden%--layer_output%layer_output%--batch_train%batch_train%--batch_test%batch_test%--lr%lr%--lr_decay%lr_decay%--decay_interval%decay_interval%--iteration%iteration%
python train.py %task% %dataset% %radius% %dim% %layer_hidden% %layer_output% %batch_train% %batch_test% %lr% %lr_decay% %decay_interval% %weight_decay% %iteration% %setting%