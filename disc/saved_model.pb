??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
v
	C1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	C1/kernel
o
C1/kernel/Read/ReadVariableOpReadVariableOp	C1/kernel*&
_output_shapes
: *
dtype0
f
C1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	C1/bias
_
C1/bias/Read/ReadVariableOpReadVariableOpC1/bias*
_output_shapes
: *
dtype0
v
	C2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_name	C2/kernel
o
C2/kernel/Read/ReadVariableOpReadVariableOp	C2/kernel*&
_output_shapes
: @*
dtype0
f
C2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	C2/bias
_
C2/bias/Read/ReadVariableOpReadVariableOpC2/bias*
_output_shapes
:@*
dtype0
v
	C3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *
shared_name	C3/kernel
o
C3/kernel/Read/ReadVariableOpReadVariableOp	C3/kernel*&
_output_shapes
:@ *
dtype0
f
C3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	C3/bias
_
C3/bias/Read/ReadVariableOpReadVariableOpC3/bias*
_output_shapes
: *
dtype0
o
	D1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_name	D1/kernel
h
D1/kernel/Read/ReadVariableOpReadVariableOp	D1/kernel*
_output_shapes
:	?@*
dtype0
f
D1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	D1/bias
_
D1/bias/Read/ReadVariableOpReadVariableOpD1/bias*
_output_shapes
:@*
dtype0
n
	D2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_name	D2/kernel
g
D2/kernel/Read/ReadVariableOpReadVariableOp	D2/kernel*
_output_shapes

:@*
dtype0
f
D2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	D2/bias
_
D2/bias/Read/ReadVariableOpReadVariableOpD2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/C1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/C1/kernel/m
}
$Adam/C1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C1/kernel/m*&
_output_shapes
: *
dtype0
t
Adam/C1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/C1/bias/m
m
"Adam/C1/bias/m/Read/ReadVariableOpReadVariableOpAdam/C1/bias/m*
_output_shapes
: *
dtype0
?
Adam/C2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameAdam/C2/kernel/m
}
$Adam/C2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C2/kernel/m*&
_output_shapes
: @*
dtype0
t
Adam/C2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameAdam/C2/bias/m
m
"Adam/C2/bias/m/Read/ReadVariableOpReadVariableOpAdam/C2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/C3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameAdam/C3/kernel/m
}
$Adam/C3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C3/kernel/m*&
_output_shapes
:@ *
dtype0
t
Adam/C3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/C3/bias/m
m
"Adam/C3/bias/m/Read/ReadVariableOpReadVariableOpAdam/C3/bias/m*
_output_shapes
: *
dtype0
}
Adam/D1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_nameAdam/D1/kernel/m
v
$Adam/D1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/D1/kernel/m*
_output_shapes
:	?@*
dtype0
t
Adam/D1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameAdam/D1/bias/m
m
"Adam/D1/bias/m/Read/ReadVariableOpReadVariableOpAdam/D1/bias/m*
_output_shapes
:@*
dtype0
|
Adam/D2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_nameAdam/D2/kernel/m
u
$Adam/D2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/D2/kernel/m*
_output_shapes

:@*
dtype0
t
Adam/D2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/D2/bias/m
m
"Adam/D2/bias/m/Read/ReadVariableOpReadVariableOpAdam/D2/bias/m*
_output_shapes
:*
dtype0
?
Adam/C1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/C1/kernel/v
}
$Adam/C1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C1/kernel/v*&
_output_shapes
: *
dtype0
t
Adam/C1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/C1/bias/v
m
"Adam/C1/bias/v/Read/ReadVariableOpReadVariableOpAdam/C1/bias/v*
_output_shapes
: *
dtype0
?
Adam/C2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameAdam/C2/kernel/v
}
$Adam/C2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C2/kernel/v*&
_output_shapes
: @*
dtype0
t
Adam/C2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameAdam/C2/bias/v
m
"Adam/C2/bias/v/Read/ReadVariableOpReadVariableOpAdam/C2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/C3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameAdam/C3/kernel/v
}
$Adam/C3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C3/kernel/v*&
_output_shapes
:@ *
dtype0
t
Adam/C3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/C3/bias/v
m
"Adam/C3/bias/v/Read/ReadVariableOpReadVariableOpAdam/C3/bias/v*
_output_shapes
: *
dtype0
}
Adam/D1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_nameAdam/D1/kernel/v
v
$Adam/D1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/D1/kernel/v*
_output_shapes
:	?@*
dtype0
t
Adam/D1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameAdam/D1/bias/v
m
"Adam/D1/bias/v/Read/ReadVariableOpReadVariableOpAdam/D1/bias/v*
_output_shapes
:@*
dtype0
|
Adam/D2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_nameAdam/D2/kernel/v
u
$Adam/D2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/D2/kernel/v*
_output_shapes

:@*
dtype0
t
Adam/D2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/D2/bias/v
m
"Adam/D2/bias/v/Read/ReadVariableOpReadVariableOpAdam/D2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?>
value?>B?> B?>
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
x

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
x

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
x

activation

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
R
"	variables
#trainable_variables
$regularization_losses
%	keras_api
x
&
activation

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
h

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?
3iter

4beta_1

5beta_2
	6decay
7learning_ratem?m?m?m?m?m?'m?(m?-m?.m?v?v?v?v?v?v?'v?(v?-v?.v?
F
0
1
2
3
4
5
'6
(7
-8
.9
 
 
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
	trainable_variables

regularization_losses
 
R
=	variables
>trainable_variables
?regularization_losses
@	keras_api
US
VARIABLE_VALUE	C1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEC1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
R
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
US
VARIABLE_VALUE	C2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEC2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
R
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
US
VARIABLE_VALUE	C3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEC3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
 regularization_losses
 
 
 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
"	variables
#trainable_variables
$regularization_losses
R
]	variables
^trainable_variables
_regularization_losses
`	keras_api
US
VARIABLE_VALUE	D1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUED1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 
 
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
)	variables
*trainable_variables
+regularization_losses
US
VARIABLE_VALUE	D2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUED2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 
 
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
/	variables
0trainable_variables
1regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
F
0
1
2
3
4
5
'6
(7
-8
.9
*
0
1
2
3
4
5

k0
 
 
 
 
 
?
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
=	variables
>trainable_variables
?regularization_losses

0
1

0
 
 
 
 
 
 
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses

0
1

0
 
 
 
 
 
 
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses

0
1

0
 
 
 
 
 
 
 
 
 
 
 
?
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
]	variables
^trainable_variables
_regularization_losses

'0
(1

&0
 
 
 

-0
.1
 
 
 
 
8

?total

?count
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
xv
VARIABLE_VALUEAdam/C1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/D1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/D1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/D2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/D2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/D1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/D1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/D2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/D2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1	C1/kernelC1/bias	C2/kernelC2/bias	C3/kernelC3/bias	D1/kernelD1/bias	D2/kernelD2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1462022
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameC1/kernel/Read/ReadVariableOpC1/bias/Read/ReadVariableOpC2/kernel/Read/ReadVariableOpC2/bias/Read/ReadVariableOpC3/kernel/Read/ReadVariableOpC3/bias/Read/ReadVariableOpD1/kernel/Read/ReadVariableOpD1/bias/Read/ReadVariableOpD2/kernel/Read/ReadVariableOpD2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$Adam/C1/kernel/m/Read/ReadVariableOp"Adam/C1/bias/m/Read/ReadVariableOp$Adam/C2/kernel/m/Read/ReadVariableOp"Adam/C2/bias/m/Read/ReadVariableOp$Adam/C3/kernel/m/Read/ReadVariableOp"Adam/C3/bias/m/Read/ReadVariableOp$Adam/D1/kernel/m/Read/ReadVariableOp"Adam/D1/bias/m/Read/ReadVariableOp$Adam/D2/kernel/m/Read/ReadVariableOp"Adam/D2/bias/m/Read/ReadVariableOp$Adam/C1/kernel/v/Read/ReadVariableOp"Adam/C1/bias/v/Read/ReadVariableOp$Adam/C2/kernel/v/Read/ReadVariableOp"Adam/C2/bias/v/Read/ReadVariableOp$Adam/C3/kernel/v/Read/ReadVariableOp"Adam/C3/bias/v/Read/ReadVariableOp$Adam/D1/kernel/v/Read/ReadVariableOp"Adam/D1/bias/v/Read/ReadVariableOp$Adam/D2/kernel/v/Read/ReadVariableOp"Adam/D2/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_1462399
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	C1/kernelC1/bias	C2/kernelC2/bias	C3/kernelC3/bias	D1/kernelD1/bias	D2/kernelD2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/C1/kernel/mAdam/C1/bias/mAdam/C2/kernel/mAdam/C2/bias/mAdam/C3/kernel/mAdam/C3/bias/mAdam/D1/kernel/mAdam/D1/bias/mAdam/D2/kernel/mAdam/D2/bias/mAdam/C1/kernel/vAdam/C1/bias/vAdam/C2/kernel/vAdam/C2/bias/vAdam/C3/kernel/vAdam/C3/bias/vAdam/D1/kernel/vAdam/D1/bias/vAdam/D2/kernel/vAdam/D2/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1462520ۮ
?0
?
"__inference__wrapped_model_1461644
input_1@
&disc_c1_conv2d_readvariableop_resource: 5
'disc_c1_biasadd_readvariableop_resource: @
&disc_c2_conv2d_readvariableop_resource: @5
'disc_c2_biasadd_readvariableop_resource:@@
&disc_c3_conv2d_readvariableop_resource:@ 5
'disc_c3_biasadd_readvariableop_resource: 9
&disc_d1_matmul_readvariableop_resource:	?@5
'disc_d1_biasadd_readvariableop_resource:@8
&disc_d2_matmul_readvariableop_resource:@5
'disc_d2_biasadd_readvariableop_resource:
identity??disc/C1/BiasAdd/ReadVariableOp?disc/C1/Conv2D/ReadVariableOp?disc/C2/BiasAdd/ReadVariableOp?disc/C2/Conv2D/ReadVariableOp?disc/C3/BiasAdd/ReadVariableOp?disc/C3/Conv2D/ReadVariableOp?disc/D1/BiasAdd/ReadVariableOp?disc/D1/MatMul/ReadVariableOp?disc/D2/BiasAdd/ReadVariableOp?disc/D2/MatMul/ReadVariableOp?
disc/C1/Conv2D/ReadVariableOpReadVariableOp&disc_c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
disc/C1/Conv2DConv2Dinput_1%disc/C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
disc/C1/BiasAdd/ReadVariableOpReadVariableOp'disc_c1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
disc/C1/BiasAddBiasAdddisc/C1/Conv2D:output:0&disc/C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? w
disc/C1/leaky_re_lu_4/LeakyRelu	LeakyReludisc/C1/BiasAdd:output:0*/
_output_shapes
:????????? ?
disc/C2/Conv2D/ReadVariableOpReadVariableOp&disc_c2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
disc/C2/Conv2DConv2D-disc/C1/leaky_re_lu_4/LeakyRelu:activations:0%disc/C2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
disc/C2/BiasAdd/ReadVariableOpReadVariableOp'disc_c2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
disc/C2/BiasAddBiasAdddisc/C2/Conv2D:output:0&disc/C2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@w
disc/C2/leaky_re_lu_5/LeakyRelu	LeakyReludisc/C2/BiasAdd:output:0*/
_output_shapes
:?????????@?
disc/C3/Conv2D/ReadVariableOpReadVariableOp&disc_c3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
disc/C3/Conv2DConv2D-disc/C2/leaky_re_lu_5/LeakyRelu:activations:0%disc/C3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
disc/C3/BiasAdd/ReadVariableOpReadVariableOp'disc_c3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
disc/C3/BiasAddBiasAdddisc/C3/Conv2D:output:0&disc/C3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? w
disc/C3/leaky_re_lu_6/LeakyRelu	LeakyReludisc/C3/BiasAdd:output:0*/
_output_shapes
:????????? ]
disc/F/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
disc/F/ReshapeReshape-disc/C3/leaky_re_lu_6/LeakyRelu:activations:0disc/F/Const:output:0*
T0*(
_output_shapes
:???????????
disc/D1/MatMul/ReadVariableOpReadVariableOp&disc_d1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
disc/D1/MatMulMatMuldisc/F/Reshape:output:0%disc/D1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
disc/D1/BiasAdd/ReadVariableOpReadVariableOp'disc_d1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
disc/D1/BiasAddBiasAdddisc/D1/MatMul:product:0&disc/D1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@o
disc/D1/leaky_re_lu_7/LeakyRelu	LeakyReludisc/D1/BiasAdd:output:0*'
_output_shapes
:?????????@?
disc/D2/MatMul/ReadVariableOpReadVariableOp&disc_d2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
disc/D2/MatMulMatMul-disc/D1/leaky_re_lu_7/LeakyRelu:activations:0%disc/D2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
disc/D2/BiasAdd/ReadVariableOpReadVariableOp'disc_d2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
disc/D2/BiasAddBiasAdddisc/D2/MatMul:product:0&disc/D2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
disc/D2/SigmoidSigmoiddisc/D2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydisc/D2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^disc/C1/BiasAdd/ReadVariableOp^disc/C1/Conv2D/ReadVariableOp^disc/C2/BiasAdd/ReadVariableOp^disc/C2/Conv2D/ReadVariableOp^disc/C3/BiasAdd/ReadVariableOp^disc/C3/Conv2D/ReadVariableOp^disc/D1/BiasAdd/ReadVariableOp^disc/D1/MatMul/ReadVariableOp^disc/D2/BiasAdd/ReadVariableOp^disc/D2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2@
disc/C1/BiasAdd/ReadVariableOpdisc/C1/BiasAdd/ReadVariableOp2>
disc/C1/Conv2D/ReadVariableOpdisc/C1/Conv2D/ReadVariableOp2@
disc/C2/BiasAdd/ReadVariableOpdisc/C2/BiasAdd/ReadVariableOp2>
disc/C2/Conv2D/ReadVariableOpdisc/C2/Conv2D/ReadVariableOp2@
disc/C3/BiasAdd/ReadVariableOpdisc/C3/BiasAdd/ReadVariableOp2>
disc/C3/Conv2D/ReadVariableOpdisc/C3/Conv2D/ReadVariableOp2@
disc/D1/BiasAdd/ReadVariableOpdisc/D1/BiasAdd/ReadVariableOp2>
disc/D1/MatMul/ReadVariableOpdisc/D1/MatMul/ReadVariableOp2@
disc/D2/BiasAdd/ReadVariableOpdisc/D2/BiasAdd/ReadVariableOp2>
disc/D2/MatMul/ReadVariableOpdisc/D2/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
?__inference_C2_layer_call_and_return_conditional_losses_1461679

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
leaky_re_lu_5/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@|
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
Z
>__inference_F_layer_call_and_return_conditional_losses_1462225

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
?__inference_D1_layer_call_and_return_conditional_losses_1462245

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@_
leaky_re_lu_7/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????@t
IdentityIdentity%leaky_re_lu_7/LeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1462072

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_disc_layer_call_and_return_conditional_losses_1461881o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
A__inference_disc_layer_call_and_return_conditional_losses_1462154

inputs;
!c1_conv2d_readvariableop_resource: 0
"c1_biasadd_readvariableop_resource: ;
!c2_conv2d_readvariableop_resource: @0
"c2_biasadd_readvariableop_resource:@;
!c3_conv2d_readvariableop_resource:@ 0
"c3_biasadd_readvariableop_resource: 4
!d1_matmul_readvariableop_resource:	?@0
"d1_biasadd_readvariableop_resource:@3
!d2_matmul_readvariableop_resource:@0
"d2_biasadd_readvariableop_resource:
identity??C1/BiasAdd/ReadVariableOp?C1/Conv2D/ReadVariableOp?C2/BiasAdd/ReadVariableOp?C2/Conv2D/ReadVariableOp?C3/BiasAdd/ReadVariableOp?C3/Conv2D/ReadVariableOp?D1/BiasAdd/ReadVariableOp?D1/MatMul/ReadVariableOp?D2/BiasAdd/ReadVariableOp?D2/MatMul/ReadVariableOp?
C1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
	C1/Conv2DConv2Dinputs C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
x
C1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?

C1/BiasAddBiasAddC1/Conv2D:output:0!C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? m
C1/leaky_re_lu_4/LeakyRelu	LeakyReluC1/BiasAdd:output:0*/
_output_shapes
:????????? ?
C2/Conv2D/ReadVariableOpReadVariableOp!c2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
	C2/Conv2DConv2D(C1/leaky_re_lu_4/LeakyRelu:activations:0 C2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
x
C2/BiasAdd/ReadVariableOpReadVariableOp"c2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?

C2/BiasAddBiasAddC2/Conv2D:output:0!C2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@m
C2/leaky_re_lu_5/LeakyRelu	LeakyReluC2/BiasAdd:output:0*/
_output_shapes
:?????????@?
C3/Conv2D/ReadVariableOpReadVariableOp!c3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
	C3/Conv2DConv2D(C2/leaky_re_lu_5/LeakyRelu:activations:0 C3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
x
C3/BiasAdd/ReadVariableOpReadVariableOp"c3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?

C3/BiasAddBiasAddC3/Conv2D:output:0!C3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? m
C3/leaky_re_lu_6/LeakyRelu	LeakyReluC3/BiasAdd:output:0*/
_output_shapes
:????????? X
F/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
	F/ReshapeReshape(C3/leaky_re_lu_6/LeakyRelu:activations:0F/Const:output:0*
T0*(
_output_shapes
:??????????{
D1/MatMul/ReadVariableOpReadVariableOp!d1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0{
	D1/MatMulMatMulF/Reshape:output:0 D1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
D1/BiasAdd/ReadVariableOpReadVariableOp"d1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0

D1/BiasAddBiasAddD1/MatMul:product:0!D1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@e
D1/leaky_re_lu_7/LeakyRelu	LeakyReluD1/BiasAdd:output:0*'
_output_shapes
:?????????@z
D2/MatMul/ReadVariableOpReadVariableOp!d2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
	D2/MatMulMatMul(D1/leaky_re_lu_7/LeakyRelu:activations:0 D2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
D2/BiasAdd/ReadVariableOpReadVariableOp"d2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

D2/BiasAddBiasAddD2/MatMul:product:0!D2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

D2/SigmoidSigmoidD2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????]
IdentityIdentityD2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^C1/BiasAdd/ReadVariableOp^C1/Conv2D/ReadVariableOp^C2/BiasAdd/ReadVariableOp^C2/Conv2D/ReadVariableOp^C3/BiasAdd/ReadVariableOp^C3/Conv2D/ReadVariableOp^D1/BiasAdd/ReadVariableOp^D1/MatMul/ReadVariableOp^D2/BiasAdd/ReadVariableOp^D2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 26
C1/BiasAdd/ReadVariableOpC1/BiasAdd/ReadVariableOp24
C1/Conv2D/ReadVariableOpC1/Conv2D/ReadVariableOp26
C2/BiasAdd/ReadVariableOpC2/BiasAdd/ReadVariableOp24
C2/Conv2D/ReadVariableOpC2/Conv2D/ReadVariableOp26
C3/BiasAdd/ReadVariableOpC3/BiasAdd/ReadVariableOp24
C3/Conv2D/ReadVariableOpC3/Conv2D/ReadVariableOp26
D1/BiasAdd/ReadVariableOpD1/BiasAdd/ReadVariableOp24
D1/MatMul/ReadVariableOpD1/MatMul/ReadVariableOp26
D2/BiasAdd/ReadVariableOpD2/BiasAdd/ReadVariableOp24
D2/MatMul/ReadVariableOpD2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1462022
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_1461644o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
?__inference_D2_layer_call_and_return_conditional_losses_1461738

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
?__inference_D1_layer_call_and_return_conditional_losses_1461721

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@_
leaky_re_lu_7/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????@t
IdentityIdentity%leaky_re_lu_7/LeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
?__inference_D2_layer_call_and_return_conditional_losses_1462265

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?,
?
A__inference_disc_layer_call_and_return_conditional_losses_1462113

inputs;
!c1_conv2d_readvariableop_resource: 0
"c1_biasadd_readvariableop_resource: ;
!c2_conv2d_readvariableop_resource: @0
"c2_biasadd_readvariableop_resource:@;
!c3_conv2d_readvariableop_resource:@ 0
"c3_biasadd_readvariableop_resource: 4
!d1_matmul_readvariableop_resource:	?@0
"d1_biasadd_readvariableop_resource:@3
!d2_matmul_readvariableop_resource:@0
"d2_biasadd_readvariableop_resource:
identity??C1/BiasAdd/ReadVariableOp?C1/Conv2D/ReadVariableOp?C2/BiasAdd/ReadVariableOp?C2/Conv2D/ReadVariableOp?C3/BiasAdd/ReadVariableOp?C3/Conv2D/ReadVariableOp?D1/BiasAdd/ReadVariableOp?D1/MatMul/ReadVariableOp?D2/BiasAdd/ReadVariableOp?D2/MatMul/ReadVariableOp?
C1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
	C1/Conv2DConv2Dinputs C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
x
C1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?

C1/BiasAddBiasAddC1/Conv2D:output:0!C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? m
C1/leaky_re_lu_4/LeakyRelu	LeakyReluC1/BiasAdd:output:0*/
_output_shapes
:????????? ?
C2/Conv2D/ReadVariableOpReadVariableOp!c2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
	C2/Conv2DConv2D(C1/leaky_re_lu_4/LeakyRelu:activations:0 C2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
x
C2/BiasAdd/ReadVariableOpReadVariableOp"c2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?

C2/BiasAddBiasAddC2/Conv2D:output:0!C2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@m
C2/leaky_re_lu_5/LeakyRelu	LeakyReluC2/BiasAdd:output:0*/
_output_shapes
:?????????@?
C3/Conv2D/ReadVariableOpReadVariableOp!c3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
	C3/Conv2DConv2D(C2/leaky_re_lu_5/LeakyRelu:activations:0 C3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
x
C3/BiasAdd/ReadVariableOpReadVariableOp"c3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?

C3/BiasAddBiasAddC3/Conv2D:output:0!C3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? m
C3/leaky_re_lu_6/LeakyRelu	LeakyReluC3/BiasAdd:output:0*/
_output_shapes
:????????? X
F/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
	F/ReshapeReshape(C3/leaky_re_lu_6/LeakyRelu:activations:0F/Const:output:0*
T0*(
_output_shapes
:??????????{
D1/MatMul/ReadVariableOpReadVariableOp!d1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0{
	D1/MatMulMatMulF/Reshape:output:0 D1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
D1/BiasAdd/ReadVariableOpReadVariableOp"d1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0

D1/BiasAddBiasAddD1/MatMul:product:0!D1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@e
D1/leaky_re_lu_7/LeakyRelu	LeakyReluD1/BiasAdd:output:0*'
_output_shapes
:?????????@z
D2/MatMul/ReadVariableOpReadVariableOp!d2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
	D2/MatMulMatMul(D1/leaky_re_lu_7/LeakyRelu:activations:0 D2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
D2/BiasAdd/ReadVariableOpReadVariableOp"d2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

D2/BiasAddBiasAddD2/MatMul:product:0!D2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

D2/SigmoidSigmoidD2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????]
IdentityIdentityD2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^C1/BiasAdd/ReadVariableOp^C1/Conv2D/ReadVariableOp^C2/BiasAdd/ReadVariableOp^C2/Conv2D/ReadVariableOp^C3/BiasAdd/ReadVariableOp^C3/Conv2D/ReadVariableOp^D1/BiasAdd/ReadVariableOp^D1/MatMul/ReadVariableOp^D2/BiasAdd/ReadVariableOp^D2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 26
C1/BiasAdd/ReadVariableOpC1/BiasAdd/ReadVariableOp24
C1/Conv2D/ReadVariableOpC1/Conv2D/ReadVariableOp26
C2/BiasAdd/ReadVariableOpC2/BiasAdd/ReadVariableOp24
C2/Conv2D/ReadVariableOpC2/Conv2D/ReadVariableOp26
C3/BiasAdd/ReadVariableOpC3/BiasAdd/ReadVariableOp24
C3/Conv2D/ReadVariableOpC3/Conv2D/ReadVariableOp26
D1/BiasAdd/ReadVariableOpD1/BiasAdd/ReadVariableOp24
D1/MatMul/ReadVariableOpD1/MatMul/ReadVariableOp26
D2/BiasAdd/ReadVariableOpD2/BiasAdd/ReadVariableOp24
D2/MatMul/ReadVariableOpD2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
Z
>__inference_F_layer_call_and_return_conditional_losses_1461708

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1462047

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_disc_layer_call_and_return_conditional_losses_1461745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_F_layer_call_fn_1462219

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_F_layer_call_and_return_conditional_losses_1461708a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1461989
input_1$

c1_1461962: 

c1_1461964: $

c2_1461967: @

c2_1461969:@$

c3_1461972:@ 

c3_1461974: 

d1_1461978:	?@

d1_1461980:@

d2_1461983:@

d2_1461985:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinput_1
c1_1461962
c1_1461964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C1_layer_call_and_return_conditional_losses_1461662?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1461967
c2_1461969*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C2_layer_call_and_return_conditional_losses_1461679?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1461972
c3_1461974*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C3_layer_call_and_return_conditional_losses_1461696?
F/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_F_layer_call_and_return_conditional_losses_1461708?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1461978
d1_1461980*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D1_layer_call_and_return_conditional_losses_1461721?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1461983
d2_1461985*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D2_layer_call_and_return_conditional_losses_1461738r
IdentityIdentity#D2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^C3/StatefulPartitionedCall^D1/StatefulPartitionedCall^D2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
D1/StatefulPartitionedCallD1/StatefulPartitionedCall28
D2/StatefulPartitionedCallD2/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1461959
input_1$

c1_1461932: 

c1_1461934: $

c2_1461937: @

c2_1461939:@$

c3_1461942:@ 

c3_1461944: 

d1_1461948:	?@

d1_1461950:@

d2_1461953:@

d2_1461955:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinput_1
c1_1461932
c1_1461934*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C1_layer_call_and_return_conditional_losses_1461662?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1461937
c2_1461939*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C2_layer_call_and_return_conditional_losses_1461679?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1461942
c3_1461944*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C3_layer_call_and_return_conditional_losses_1461696?
F/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_F_layer_call_and_return_conditional_losses_1461708?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1461948
d1_1461950*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D1_layer_call_and_return_conditional_losses_1461721?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1461953
d2_1461955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D2_layer_call_and_return_conditional_losses_1461738r
IdentityIdentity#D2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^C3/StatefulPartitionedCall^D1/StatefulPartitionedCall^D2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
D1/StatefulPartitionedCallD1/StatefulPartitionedCall28
D2/StatefulPartitionedCallD2/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
$__inference_D1_layer_call_fn_1462234

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D1_layer_call_and_return_conditional_losses_1461721o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?L
?
 __inference__traced_save_1462399
file_prefix(
$savev2_c1_kernel_read_readvariableop&
"savev2_c1_bias_read_readvariableop(
$savev2_c2_kernel_read_readvariableop&
"savev2_c2_bias_read_readvariableop(
$savev2_c3_kernel_read_readvariableop&
"savev2_c3_bias_read_readvariableop(
$savev2_d1_kernel_read_readvariableop&
"savev2_d1_bias_read_readvariableop(
$savev2_d2_kernel_read_readvariableop&
"savev2_d2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop/
+savev2_adam_c1_kernel_m_read_readvariableop-
)savev2_adam_c1_bias_m_read_readvariableop/
+savev2_adam_c2_kernel_m_read_readvariableop-
)savev2_adam_c2_bias_m_read_readvariableop/
+savev2_adam_c3_kernel_m_read_readvariableop-
)savev2_adam_c3_bias_m_read_readvariableop/
+savev2_adam_d1_kernel_m_read_readvariableop-
)savev2_adam_d1_bias_m_read_readvariableop/
+savev2_adam_d2_kernel_m_read_readvariableop-
)savev2_adam_d2_bias_m_read_readvariableop/
+savev2_adam_c1_kernel_v_read_readvariableop-
)savev2_adam_c1_bias_v_read_readvariableop/
+savev2_adam_c2_kernel_v_read_readvariableop-
)savev2_adam_c2_bias_v_read_readvariableop/
+savev2_adam_c3_kernel_v_read_readvariableop-
)savev2_adam_c3_bias_v_read_readvariableop/
+savev2_adam_d1_kernel_v_read_readvariableop-
)savev2_adam_d1_bias_v_read_readvariableop/
+savev2_adam_d2_kernel_v_read_readvariableop-
)savev2_adam_d2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_c1_kernel_read_readvariableop"savev2_c1_bias_read_readvariableop$savev2_c2_kernel_read_readvariableop"savev2_c2_bias_read_readvariableop$savev2_c3_kernel_read_readvariableop"savev2_c3_bias_read_readvariableop$savev2_d1_kernel_read_readvariableop"savev2_d1_bias_read_readvariableop$savev2_d2_kernel_read_readvariableop"savev2_d2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_adam_c1_kernel_m_read_readvariableop)savev2_adam_c1_bias_m_read_readvariableop+savev2_adam_c2_kernel_m_read_readvariableop)savev2_adam_c2_bias_m_read_readvariableop+savev2_adam_c3_kernel_m_read_readvariableop)savev2_adam_c3_bias_m_read_readvariableop+savev2_adam_d1_kernel_m_read_readvariableop)savev2_adam_d1_bias_m_read_readvariableop+savev2_adam_d2_kernel_m_read_readvariableop)savev2_adam_d2_bias_m_read_readvariableop+savev2_adam_c1_kernel_v_read_readvariableop)savev2_adam_c1_bias_v_read_readvariableop+savev2_adam_c2_kernel_v_read_readvariableop)savev2_adam_c2_bias_v_read_readvariableop+savev2_adam_c3_kernel_v_read_readvariableop)savev2_adam_c3_bias_v_read_readvariableop+savev2_adam_d1_kernel_v_read_readvariableop)savev2_adam_d1_bias_v_read_readvariableop+savev2_adam_d2_kernel_v_read_readvariableop)savev2_adam_d2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@ : :	?@:@:@:: : : : : : : : : : @:@:@ : :	?@:@:@:: : : @:@:@ : :	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :%!

_output_shapes
:	?@: 

_output_shapes
:@:$	 

_output_shapes

:@: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:, (
&
_output_shapes
:@ : !

_output_shapes
: :%"!

_output_shapes
:	?@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::&

_output_shapes
: 
?
?
?__inference_C1_layer_call_and_return_conditional_losses_1461662

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:????????? |
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1462520
file_prefix4
assignvariableop_c1_kernel: (
assignvariableop_1_c1_bias: 6
assignvariableop_2_c2_kernel: @(
assignvariableop_3_c2_bias:@6
assignvariableop_4_c3_kernel:@ (
assignvariableop_5_c3_bias: /
assignvariableop_6_d1_kernel:	?@(
assignvariableop_7_d1_bias:@.
assignvariableop_8_d2_kernel:@(
assignvariableop_9_d2_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: >
$assignvariableop_17_adam_c1_kernel_m: 0
"assignvariableop_18_adam_c1_bias_m: >
$assignvariableop_19_adam_c2_kernel_m: @0
"assignvariableop_20_adam_c2_bias_m:@>
$assignvariableop_21_adam_c3_kernel_m:@ 0
"assignvariableop_22_adam_c3_bias_m: 7
$assignvariableop_23_adam_d1_kernel_m:	?@0
"assignvariableop_24_adam_d1_bias_m:@6
$assignvariableop_25_adam_d2_kernel_m:@0
"assignvariableop_26_adam_d2_bias_m:>
$assignvariableop_27_adam_c1_kernel_v: 0
"assignvariableop_28_adam_c1_bias_v: >
$assignvariableop_29_adam_c2_kernel_v: @0
"assignvariableop_30_adam_c2_bias_v:@>
$assignvariableop_31_adam_c3_kernel_v:@ 0
"assignvariableop_32_adam_c3_bias_v: 7
$assignvariableop_33_adam_d1_kernel_v:	?@0
"assignvariableop_34_adam_d1_bias_v:@6
$assignvariableop_35_adam_d2_kernel_v:@0
"assignvariableop_36_adam_d2_bias_v:
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_c1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_c1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_c2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_c2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_c3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_c3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_d1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_d1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_d2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_d2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp$assignvariableop_17_adam_c1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp"assignvariableop_18_adam_c1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_c2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_adam_c2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp$assignvariableop_21_adam_c3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_adam_c3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_adam_d1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_adam_d1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp$assignvariableop_25_adam_d2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_adam_d2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp$assignvariableop_27_adam_c1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp"assignvariableop_28_adam_c1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp$assignvariableop_29_adam_c2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp"assignvariableop_30_adam_c2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp$assignvariableop_31_adam_c3_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp"assignvariableop_32_adam_c3_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp$assignvariableop_33_adam_d1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp"assignvariableop_34_adam_d1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp$assignvariableop_35_adam_d2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp"assignvariableop_36_adam_d2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
?__inference_C2_layer_call_and_return_conditional_losses_1462194

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
leaky_re_lu_5/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@|
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_D2_layer_call_fn_1462254

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D2_layer_call_and_return_conditional_losses_1461738o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_C3_layer_call_fn_1462203

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C3_layer_call_and_return_conditional_losses_1461696w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
?__inference_C3_layer_call_and_return_conditional_losses_1462214

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
leaky_re_lu_6/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:????????? |
IdentityIdentity%leaky_re_lu_6/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1461881

inputs$

c1_1461854: 

c1_1461856: $

c2_1461859: @

c2_1461861:@$

c3_1461864:@ 

c3_1461866: 

d1_1461870:	?@

d1_1461872:@

d2_1461875:@

d2_1461877:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinputs
c1_1461854
c1_1461856*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C1_layer_call_and_return_conditional_losses_1461662?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1461859
c2_1461861*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C2_layer_call_and_return_conditional_losses_1461679?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1461864
c3_1461866*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C3_layer_call_and_return_conditional_losses_1461696?
F/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_F_layer_call_and_return_conditional_losses_1461708?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1461870
d1_1461872*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D1_layer_call_and_return_conditional_losses_1461721?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1461875
d2_1461877*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D2_layer_call_and_return_conditional_losses_1461738r
IdentityIdentity#D2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^C3/StatefulPartitionedCall^D1/StatefulPartitionedCall^D2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
D1/StatefulPartitionedCallD1/StatefulPartitionedCall28
D2/StatefulPartitionedCallD2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
?__inference_C3_layer_call_and_return_conditional_losses_1461696

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
leaky_re_lu_6/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:????????? |
IdentityIdentity%leaky_re_lu_6/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1461929
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_disc_layer_call_and_return_conditional_losses_1461881o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
$__inference_C2_layer_call_fn_1462183

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C2_layer_call_and_return_conditional_losses_1461679w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_C1_layer_call_fn_1462163

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C1_layer_call_and_return_conditional_losses_1461662w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1461768
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_disc_layer_call_and_return_conditional_losses_1461745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
?__inference_C1_layer_call_and_return_conditional_losses_1462174

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:????????? |
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1461745

inputs$

c1_1461663: 

c1_1461665: $

c2_1461680: @

c2_1461682:@$

c3_1461697:@ 

c3_1461699: 

d1_1461722:	?@

d1_1461724:@

d2_1461739:@

d2_1461741:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinputs
c1_1461663
c1_1461665*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C1_layer_call_and_return_conditional_losses_1461662?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1461680
c2_1461682*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C2_layer_call_and_return_conditional_losses_1461679?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1461697
c3_1461699*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_C3_layer_call_and_return_conditional_losses_1461696?
F/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_F_layer_call_and_return_conditional_losses_1461708?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1461722
d1_1461724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D1_layer_call_and_return_conditional_losses_1461721?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1461739
d2_1461741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_D2_layer_call_and_return_conditional_losses_1461738r
IdentityIdentity#D2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^C3/StatefulPartitionedCall^D1/StatefulPartitionedCall^D2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
D1/StatefulPartitionedCallD1/StatefulPartitionedCall28
D2/StatefulPartitionedCallD2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????6
D20
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

activation

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
&
activation

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
3iter

4beta_1

5beta_2
	6decay
7learning_ratem?m?m?m?m?m?'m?(m?-m?.m?v?v?v?v?v?v?'v?(v?-v?.v?"
	optimizer
f
0
1
2
3
4
5
'6
(7
-8
.9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
	trainable_variables

regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
#:! 2	C1/kernel
: 2C1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
#:! @2	C2/kernel
:@2C2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
#:!@ 2	C3/kernel
: 2C3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
 regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
"	variables
#trainable_variables
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
:	?@2	D1/kernel
:@2D1/bias
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:@2	D2/kernel
:2D2/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
/	variables
0trainable_variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
f
0
1
2
3
4
5
'6
(7
-8
.9"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
]	variables
^trainable_variables
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
'0
(1"
trackable_list_wrapper
'
&0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
(:& 2Adam/C1/kernel/m
: 2Adam/C1/bias/m
(:& @2Adam/C2/kernel/m
:@2Adam/C2/bias/m
(:&@ 2Adam/C3/kernel/m
: 2Adam/C3/bias/m
!:	?@2Adam/D1/kernel/m
:@2Adam/D1/bias/m
 :@2Adam/D2/kernel/m
:2Adam/D2/bias/m
(:& 2Adam/C1/kernel/v
: 2Adam/C1/bias/v
(:& @2Adam/C2/kernel/v
:@2Adam/C2/bias/v
(:&@ 2Adam/C3/kernel/v
: 2Adam/C3/bias/v
!:	?@2Adam/D1/kernel/v
:@2Adam/D1/bias/v
 :@2Adam/D2/kernel/v
:2Adam/D2/bias/v
?2?
&__inference_disc_layer_call_fn_1461768
&__inference_disc_layer_call_fn_1462047
&__inference_disc_layer_call_fn_1462072
&__inference_disc_layer_call_fn_1461929?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_disc_layer_call_and_return_conditional_losses_1462113
A__inference_disc_layer_call_and_return_conditional_losses_1462154
A__inference_disc_layer_call_and_return_conditional_losses_1461959
A__inference_disc_layer_call_and_return_conditional_losses_1461989?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_1461644input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_C1_layer_call_fn_1462163?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_C1_layer_call_and_return_conditional_losses_1462174?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_C2_layer_call_fn_1462183?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_C2_layer_call_and_return_conditional_losses_1462194?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_C3_layer_call_fn_1462203?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_C3_layer_call_and_return_conditional_losses_1462214?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
#__inference_F_layer_call_fn_1462219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
>__inference_F_layer_call_and_return_conditional_losses_1462225?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_D1_layer_call_fn_1462234?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_D1_layer_call_and_return_conditional_losses_1462245?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_D2_layer_call_fn_1462254?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_D2_layer_call_and_return_conditional_losses_1462265?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1462022input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
?__inference_C1_layer_call_and_return_conditional_losses_1462174l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
$__inference_C1_layer_call_fn_1462163_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
?__inference_C2_layer_call_and_return_conditional_losses_1462194l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
$__inference_C2_layer_call_fn_1462183_7?4
-?*
(?%
inputs????????? 
? " ??????????@?
?__inference_C3_layer_call_and_return_conditional_losses_1462214l7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0????????? 
? ?
$__inference_C3_layer_call_fn_1462203_7?4
-?*
(?%
inputs?????????@
? " ?????????? ?
?__inference_D1_layer_call_and_return_conditional_losses_1462245]'(0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? x
$__inference_D1_layer_call_fn_1462234P'(0?-
&?#
!?
inputs??????????
? "??????????@?
?__inference_D2_layer_call_and_return_conditional_losses_1462265\-./?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? w
$__inference_D2_layer_call_fn_1462254O-./?,
%?"
 ?
inputs?????????@
? "???????????
>__inference_F_layer_call_and_return_conditional_losses_1462225a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? {
#__inference_F_layer_call_fn_1462219T7?4
-?*
(?%
inputs????????? 
? "????????????
"__inference__wrapped_model_1461644o
'(-.8?5
.?+
)?&
input_1?????????
? "'?$
"
D2?
D2??????????
A__inference_disc_layer_call_and_return_conditional_losses_1461959u
'(-.@?=
6?3
)?&
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_disc_layer_call_and_return_conditional_losses_1461989u
'(-.@?=
6?3
)?&
input_1?????????
p

 
? "%?"
?
0?????????
? ?
A__inference_disc_layer_call_and_return_conditional_losses_1462113t
'(-.??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_disc_layer_call_and_return_conditional_losses_1462154t
'(-.??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????
? ?
&__inference_disc_layer_call_fn_1461768h
'(-.@?=
6?3
)?&
input_1?????????
p 

 
? "???????????
&__inference_disc_layer_call_fn_1461929h
'(-.@?=
6?3
)?&
input_1?????????
p

 
? "???????????
&__inference_disc_layer_call_fn_1462047g
'(-.??<
5?2
(?%
inputs?????????
p 

 
? "???????????
&__inference_disc_layer_call_fn_1462072g
'(-.??<
5?2
(?%
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1462022z
'(-.C?@
? 
9?6
4
input_1)?&
input_1?????????"'?$
"
D2?
D2?????????