Д
??
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
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
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
u
inp_D/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*
shared_nameinp_D/kernel
n
 inp_D/kernel/Read/ReadVariableOpReadVariableOpinp_D/kernel*
_output_shapes
:	d?*
dtype0
m

inp_D/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
inp_D/bias
f
inp_D/bias/Read/ReadVariableOpReadVariableOp
inp_D/bias*
_output_shapes	
:?*
dtype0
x

CT1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_name
CT1/kernel
q
CT1/kernel/Read/ReadVariableOpReadVariableOp
CT1/kernel*&
_output_shapes
:  *
dtype0
h
CT1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
CT1/bias
a
CT1/bias/Read/ReadVariableOpReadVariableOpCT1/bias*
_output_shapes
: *
dtype0
x

CT2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *
shared_name
CT2/kernel
q
CT2/kernel/Read/ReadVariableOpReadVariableOp
CT2/kernel*&
_output_shapes
:@ *
dtype0
h
CT2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
CT2/bias
a
CT2/bias/Read/ReadVariableOpReadVariableOpCT2/bias*
_output_shapes
:@*
dtype0
x

CT3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_name
CT3/kernel
q
CT3/kernel/Read/ReadVariableOpReadVariableOp
CT3/kernel*&
_output_shapes
:@@*
dtype0
h
CT3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
CT3/bias
a
CT3/bias/Read/ReadVariableOpReadVariableOpCT3/bias*
_output_shapes
:@*
dtype0
x

CT4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_name
CT4/kernel
q
CT4/kernel/Read/ReadVariableOpReadVariableOp
CT4/kernel*&
_output_shapes
:@@*
dtype0
h
CT4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
CT4/bias
a
CT4/bias/Read/ReadVariableOpReadVariableOpCT4/bias*
_output_shapes
:@*
dtype0
x

CT5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
CT5/kernel
q
CT5/kernel/Read/ReadVariableOpReadVariableOp
CT5/kernel*&
_output_shapes
:@*
dtype0
h
CT5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
CT5/bias
a
CT5/bias/Read/ReadVariableOpReadVariableOpCT5/bias*
_output_shapes
:*
dtype0
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
j
Adam/iter_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdam/iter_1
c
Adam/iter_1/Read/ReadVariableOpReadVariableOpAdam/iter_1*
_output_shapes
: *
dtype0	
n
Adam/beta_1_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1_1
g
!Adam/beta_1_1/Read/ReadVariableOpReadVariableOpAdam/beta_1_1*
_output_shapes
: *
dtype0
n
Adam/beta_2_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2_1
g
!Adam/beta_2_1/Read/ReadVariableOpReadVariableOpAdam/beta_2_1*
_output_shapes
: *
dtype0
l
Adam/decay_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/decay_1
e
 Adam/decay_1/Read/ReadVariableOpReadVariableOpAdam/decay_1*
_output_shapes
: *
dtype0
|
Adam/learning_rate_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/learning_rate_1
u
(Adam/learning_rate_1/Read/ReadVariableOpReadVariableOpAdam/learning_rate_1*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/inp_D/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*$
shared_nameAdam/inp_D/kernel/m
|
'Adam/inp_D/kernel/m/Read/ReadVariableOpReadVariableOpAdam/inp_D/kernel/m*
_output_shapes
:	d?*
dtype0
{
Adam/inp_D/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/inp_D/bias/m
t
%Adam/inp_D/bias/m/Read/ReadVariableOpReadVariableOpAdam/inp_D/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/CT1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameAdam/CT1/kernel/m

%Adam/CT1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CT1/kernel/m*&
_output_shapes
:  *
dtype0
v
Adam/CT1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/CT1/bias/m
o
#Adam/CT1/bias/m/Read/ReadVariableOpReadVariableOpAdam/CT1/bias/m*
_output_shapes
: *
dtype0
?
Adam/CT2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameAdam/CT2/kernel/m

%Adam/CT2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CT2/kernel/m*&
_output_shapes
:@ *
dtype0
v
Adam/CT2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/CT2/bias/m
o
#Adam/CT2/bias/m/Read/ReadVariableOpReadVariableOpAdam/CT2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/CT3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameAdam/CT3/kernel/m

%Adam/CT3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CT3/kernel/m*&
_output_shapes
:@@*
dtype0
v
Adam/CT3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/CT3/bias/m
o
#Adam/CT3/bias/m/Read/ReadVariableOpReadVariableOpAdam/CT3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/CT4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameAdam/CT4/kernel/m

%Adam/CT4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CT4/kernel/m*&
_output_shapes
:@@*
dtype0
v
Adam/CT4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/CT4/bias/m
o
#Adam/CT4/bias/m/Read/ReadVariableOpReadVariableOpAdam/CT4/bias/m*
_output_shapes
:@*
dtype0
?
Adam/CT5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/CT5/kernel/m

%Adam/CT5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CT5/kernel/m*&
_output_shapes
:@*
dtype0
v
Adam/CT5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/CT5/bias/m
o
#Adam/CT5/bias/m/Read/ReadVariableOpReadVariableOpAdam/CT5/bias/m*
_output_shapes
:*
dtype0
?
Adam/inp_D/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*$
shared_nameAdam/inp_D/kernel/v
|
'Adam/inp_D/kernel/v/Read/ReadVariableOpReadVariableOpAdam/inp_D/kernel/v*
_output_shapes
:	d?*
dtype0
{
Adam/inp_D/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/inp_D/bias/v
t
%Adam/inp_D/bias/v/Read/ReadVariableOpReadVariableOpAdam/inp_D/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/CT1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameAdam/CT1/kernel/v

%Adam/CT1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CT1/kernel/v*&
_output_shapes
:  *
dtype0
v
Adam/CT1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/CT1/bias/v
o
#Adam/CT1/bias/v/Read/ReadVariableOpReadVariableOpAdam/CT1/bias/v*
_output_shapes
: *
dtype0
?
Adam/CT2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameAdam/CT2/kernel/v

%Adam/CT2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CT2/kernel/v*&
_output_shapes
:@ *
dtype0
v
Adam/CT2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/CT2/bias/v
o
#Adam/CT2/bias/v/Read/ReadVariableOpReadVariableOpAdam/CT2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/CT3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameAdam/CT3/kernel/v

%Adam/CT3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CT3/kernel/v*&
_output_shapes
:@@*
dtype0
v
Adam/CT3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/CT3/bias/v
o
#Adam/CT3/bias/v/Read/ReadVariableOpReadVariableOpAdam/CT3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/CT4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameAdam/CT4/kernel/v

%Adam/CT4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CT4/kernel/v*&
_output_shapes
:@@*
dtype0
v
Adam/CT4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/CT4/bias/v
o
#Adam/CT4/bias/v/Read/ReadVariableOpReadVariableOpAdam/CT4/bias/v*
_output_shapes
:@*
dtype0
?
Adam/CT5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/CT5/kernel/v

%Adam/CT5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CT5/kernel/v*&
_output_shapes
:@*
dtype0
v
Adam/CT5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/CT5/bias/v
o
#Adam/CT5/bias/v/Read/ReadVariableOpReadVariableOpAdam/CT5/bias/v*
_output_shapes
:*
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
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
 
?

layer_with_weights-0

layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
trainable_variables
regularization_losses
 	keras_api
?
!iter

"beta_1

#beta_2
	$decay
%learning_rate&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?0m?1m?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?0v?1v?
?
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
212
313
414
515
616
717
818
919
:20
;21
V
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
 
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
 
h

&kernel
'bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
R
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
x
I
activation

(kernel
)bias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
x
N
activation

*kernel
+bias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
x
S
activation

,kernel
-bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
x
X
activation

.kernel
/bias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
h

0kernel
1bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
 
V
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
V
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
 
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
x
f
activation

2kernel
3bias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
x
k
activation

4kernel
5bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
x
p
activation

6kernel
7bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
R
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
x
y
activation

8kernel
9bias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
j

:kernel
;bias
~	variables
trainable_variables
?regularization_losses
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?
F
20
31
42
53
64
75
86
97
:8
;9
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
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
HF
VARIABLE_VALUEinp_D/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
inp_D/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
CT1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUECT1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
CT2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUECT2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
CT3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUECT3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
CT4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUECT4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUE
CT5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUECT5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE	C1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUEC1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE	C2/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUEC2/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE	C3/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUEC3/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE	D1/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUED1/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE	D2/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
DB
VARIABLE_VALUED2/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
F
20
31
42
53
64
75
86
97
:8
;9

0
1
2

?0
 
 

&0
'1

&0
'1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

(0
)1

(0
)1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

*0
+1

*0
+1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

,0
-1

,0
-1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

.0
/1

.0
/1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses

00
11

00
11
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
 
1

0
1
2
3
4
5
6

?0
 
 
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

20
31
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

40
51
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

60
71
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
q	variables
rtrainable_variables
sregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
u	variables
vtrainable_variables
wregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

80
91
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses

:0
;1
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
_]
VARIABLE_VALUEAdam/iter_1>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEAdam/beta_1_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEAdam/beta_2_1@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/decay_1?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/learning_rate_1Glayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
F
20
31
42
53
64
75
86
97
:8
;9
*
0
1
2
3
4
5

?0
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

I0
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

N0
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

S0
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

X0
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

20
31

f0
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

40
51

k0
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

60
71

p0
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

80
91

y0
 
 
 

:0
;1
 
 
 
 
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
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
fd
VARIABLE_VALUEtotal_1Ilayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_1Ilayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
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
fd
VARIABLE_VALUEtotal_2Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_2Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
ki
VARIABLE_VALUEAdam/inp_D/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/inp_D/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT4/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT4/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/CT5/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/CT5/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/inp_D/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/inp_D/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/CT4/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEAdam/CT4/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/CT5/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/CT5/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/C1/kernel/mXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/C1/bias/mXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/C2/kernel/mXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/C2/bias/mXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/C3/kernel/mXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/C3/bias/mXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/D1/kernel/mXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/D1/bias/mXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/D2/kernel/mXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/D2/bias/mXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/C1/kernel/vXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/C1/bias/vXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/C2/kernel/vXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/C2/bias/vXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/C3/kernel/vXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/C3/bias/vXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/D1/kernel/vXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/D1/bias/vXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/D2/kernel/vXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/D2/bias/vXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_2Placeholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2inp_D/kernel
inp_D/bias
CT1/kernelCT1/bias
CT2/kernelCT2/bias
CT3/kernelCT3/bias
CT4/kernelCT4/bias
CT5/kernelCT5/bias	C1/kernelC1/bias	C2/kernelC2/bias	C3/kernelC3/bias	D1/kernelD1/bias	D2/kernelD2/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1464399
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp inp_D/kernel/Read/ReadVariableOpinp_D/bias/Read/ReadVariableOpCT1/kernel/Read/ReadVariableOpCT1/bias/Read/ReadVariableOpCT2/kernel/Read/ReadVariableOpCT2/bias/Read/ReadVariableOpCT3/kernel/Read/ReadVariableOpCT3/bias/Read/ReadVariableOpCT4/kernel/Read/ReadVariableOpCT4/bias/Read/ReadVariableOpCT5/kernel/Read/ReadVariableOpCT5/bias/Read/ReadVariableOpC1/kernel/Read/ReadVariableOpC1/bias/Read/ReadVariableOpC2/kernel/Read/ReadVariableOpC2/bias/Read/ReadVariableOpC3/kernel/Read/ReadVariableOpC3/bias/Read/ReadVariableOpD1/kernel/Read/ReadVariableOpD1/bias/Read/ReadVariableOpD2/kernel/Read/ReadVariableOpD2/bias/Read/ReadVariableOpAdam/iter_1/Read/ReadVariableOp!Adam/beta_1_1/Read/ReadVariableOp!Adam/beta_2_1/Read/ReadVariableOp Adam/decay_1/Read/ReadVariableOp(Adam/learning_rate_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp'Adam/inp_D/kernel/m/Read/ReadVariableOp%Adam/inp_D/bias/m/Read/ReadVariableOp%Adam/CT1/kernel/m/Read/ReadVariableOp#Adam/CT1/bias/m/Read/ReadVariableOp%Adam/CT2/kernel/m/Read/ReadVariableOp#Adam/CT2/bias/m/Read/ReadVariableOp%Adam/CT3/kernel/m/Read/ReadVariableOp#Adam/CT3/bias/m/Read/ReadVariableOp%Adam/CT4/kernel/m/Read/ReadVariableOp#Adam/CT4/bias/m/Read/ReadVariableOp%Adam/CT5/kernel/m/Read/ReadVariableOp#Adam/CT5/bias/m/Read/ReadVariableOp'Adam/inp_D/kernel/v/Read/ReadVariableOp%Adam/inp_D/bias/v/Read/ReadVariableOp%Adam/CT1/kernel/v/Read/ReadVariableOp#Adam/CT1/bias/v/Read/ReadVariableOp%Adam/CT2/kernel/v/Read/ReadVariableOp#Adam/CT2/bias/v/Read/ReadVariableOp%Adam/CT3/kernel/v/Read/ReadVariableOp#Adam/CT3/bias/v/Read/ReadVariableOp%Adam/CT4/kernel/v/Read/ReadVariableOp#Adam/CT4/bias/v/Read/ReadVariableOp%Adam/CT5/kernel/v/Read/ReadVariableOp#Adam/CT5/bias/v/Read/ReadVariableOp$Adam/C1/kernel/m/Read/ReadVariableOp"Adam/C1/bias/m/Read/ReadVariableOp$Adam/C2/kernel/m/Read/ReadVariableOp"Adam/C2/bias/m/Read/ReadVariableOp$Adam/C3/kernel/m/Read/ReadVariableOp"Adam/C3/bias/m/Read/ReadVariableOp$Adam/D1/kernel/m/Read/ReadVariableOp"Adam/D1/bias/m/Read/ReadVariableOp$Adam/D2/kernel/m/Read/ReadVariableOp"Adam/D2/bias/m/Read/ReadVariableOp$Adam/C1/kernel/v/Read/ReadVariableOp"Adam/C1/bias/v/Read/ReadVariableOp$Adam/C2/kernel/v/Read/ReadVariableOp"Adam/C2/bias/v/Read/ReadVariableOp$Adam/C3/kernel/v/Read/ReadVariableOp"Adam/C3/bias/v/Read/ReadVariableOp$Adam/D1/kernel/v/Read/ReadVariableOp"Adam/D1/bias/v/Read/ReadVariableOp$Adam/D2/kernel/v/Read/ReadVariableOp"Adam/D2/bias/v/Read/ReadVariableOpConst*_
TinX
V2T		*
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
 __inference__traced_save_1466102
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateinp_D/kernel
inp_D/bias
CT1/kernelCT1/bias
CT2/kernelCT2/bias
CT3/kernelCT3/bias
CT4/kernelCT4/bias
CT5/kernelCT5/bias	C1/kernelC1/bias	C2/kernelC2/bias	C3/kernelC3/bias	D1/kernelD1/bias	D2/kernelD2/biasAdam/iter_1Adam/beta_1_1Adam/beta_2_1Adam/decay_1Adam/learning_rate_1totalcounttotal_1count_1total_2count_2Adam/inp_D/kernel/mAdam/inp_D/bias/mAdam/CT1/kernel/mAdam/CT1/bias/mAdam/CT2/kernel/mAdam/CT2/bias/mAdam/CT3/kernel/mAdam/CT3/bias/mAdam/CT4/kernel/mAdam/CT4/bias/mAdam/CT5/kernel/mAdam/CT5/bias/mAdam/inp_D/kernel/vAdam/inp_D/bias/vAdam/CT1/kernel/vAdam/CT1/bias/vAdam/CT2/kernel/vAdam/CT2/bias/vAdam/CT3/kernel/vAdam/CT3/bias/vAdam/CT4/kernel/vAdam/CT4/bias/vAdam/CT5/kernel/vAdam/CT5/bias/vAdam/C1/kernel/mAdam/C1/bias/mAdam/C2/kernel/mAdam/C2/bias/mAdam/C3/kernel/mAdam/C3/bias/mAdam/D1/kernel/mAdam/D1/bias/mAdam/D2/kernel/mAdam/D2/bias/mAdam/C1/kernel/vAdam/C1/bias/vAdam/C2/kernel/vAdam/C2/bias/vAdam/C3/kernel/vAdam/C3/bias/vAdam/D1/kernel/vAdam/D1/bias/vAdam/D2/kernel/vAdam/D2/bias/v*^
TinW
U2S*
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
#__inference__traced_restore_1466358ޱ
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1463836

inputs$

c1_1463809: 

c1_1463811: $

c2_1463814: @

c2_1463816:@$

c3_1463819:@ 

c3_1463821: 

d1_1463825:	?@

d1_1463827:@

d2_1463830:@

d2_1463832:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinputs
c1_1463809
c1_1463811*
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
?__inference_C1_layer_call_and_return_conditional_losses_1463617?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1463814
c2_1463816*
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
?__inference_C2_layer_call_and_return_conditional_losses_1463634?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1463819
c3_1463821*
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
?__inference_C3_layer_call_and_return_conditional_losses_1463651?
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
>__inference_F_layer_call_and_return_conditional_losses_1463663?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1463825
d1_1463827*
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
?__inference_D1_layer_call_and_return_conditional_losses_1463676?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1463830
d2_1463832*
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
?__inference_D2_layer_call_and_return_conditional_losses_1463693r
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
?
f
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1463072

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
Z
>__inference_F_layer_call_and_return_conditional_losses_1463663

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
?__inference_D1_layer_call_and_return_conditional_losses_1463676

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
?
?
$__inference_C1_layer_call_fn_1465691

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
?__inference_C1_layer_call_and_return_conditional_losses_1463617w
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
?
?
%__inference_GAN_layer_call_fn_1464448

inputs
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13: @

unknown_14:@$

unknown_15:@ 

unknown_16: 

unknown_17:	?@

unknown_18:@

unknown_19:@

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_GAN_layer_call_and_return_conditional_losses_1463998o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
@__inference_CT1_layer_call_and_return_conditional_losses_1465366

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? e
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:????????? z
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
%__inference_CT5_layer_call_fn_1465624

inputs!
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT5_layer_call_and_return_conditional_losses_1463312w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1463723
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
A__inference_disc_layer_call_and_return_conditional_losses_1463700o
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
?
?
%__inference_CT1_layer_call_fn_1465299

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT1_layer_call_and_return_conditional_losses_1462892?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
%__inference_CT4_layer_call_fn_1465544

inputs!
unknown:@@
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
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT4_layer_call_and_return_conditional_losses_1463283w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1464992

inputs7
$inp_d_matmul_readvariableop_resource:	d?4
%inp_d_biasadd_readvariableop_resource:	?F
,ct1_conv2d_transpose_readvariableop_resource:  1
#ct1_biasadd_readvariableop_resource: F
,ct2_conv2d_transpose_readvariableop_resource:@ 1
#ct2_biasadd_readvariableop_resource:@F
,ct3_conv2d_transpose_readvariableop_resource:@@1
#ct3_biasadd_readvariableop_resource:@F
,ct4_conv2d_transpose_readvariableop_resource:@@1
#ct4_biasadd_readvariableop_resource:@F
,ct5_conv2d_transpose_readvariableop_resource:@1
#ct5_biasadd_readvariableop_resource:
identity??CT1/BiasAdd/ReadVariableOp?#CT1/conv2d_transpose/ReadVariableOp?CT2/BiasAdd/ReadVariableOp?#CT2/conv2d_transpose/ReadVariableOp?CT3/BiasAdd/ReadVariableOp?#CT3/conv2d_transpose/ReadVariableOp?CT4/BiasAdd/ReadVariableOp?#CT4/conv2d_transpose/ReadVariableOp?CT5/BiasAdd/ReadVariableOp?#CT5/conv2d_transpose/ReadVariableOp?inp_D/BiasAdd/ReadVariableOp?inp_D/MatMul/ReadVariableOp?
inp_D/MatMul/ReadVariableOpReadVariableOp$inp_d_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0v
inp_D/MatMulMatMulinputs#inp_D/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
inp_D/BiasAdd/ReadVariableOpReadVariableOp%inp_d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
inp_D/BiasAddBiasAddinp_D/MatMul:product:0$inp_D/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

inp_D/ReluReluinp_D/BiasAdd:output:0*
T0*(
_output_shapes
:??????????U
reshape/ShapeShapeinp_D/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape/ReshapeReshapeinp_D/Relu:activations:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? Q
	CT1/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:a
CT1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT1/strided_sliceStridedSliceCT1/Shape:output:0 CT1/strided_slice/stack:output:0"CT1/strided_slice/stack_1:output:0"CT1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT1/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
	CT1/stackPackCT1/strided_slice:output:0CT1/stack/1:output:0CT1/stack/2:output:0CT1/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT1/strided_slice_1StridedSliceCT1/stack:output:0"CT1/strided_slice_1/stack:output:0$CT1/strided_slice_1/stack_1:output:0$CT1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT1/conv2d_transpose/ReadVariableOpReadVariableOp,ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
CT1/conv2d_transposeConv2DBackpropInputCT1/stack:output:0+CT1/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
z
CT1/BiasAdd/ReadVariableOpReadVariableOp#ct1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
CT1/BiasAddBiasAddCT1/conv2d_transpose:output:0"CT1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? m
CT1/leaky_re_lu/LeakyRelu	LeakyReluCT1/BiasAdd:output:0*/
_output_shapes
:????????? `
	CT2/ShapeShape'CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT2/strided_sliceStridedSliceCT2/Shape:output:0 CT2/strided_slice/stack:output:0"CT2/strided_slice/stack_1:output:0"CT2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
M
CT2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :
M
CT2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
	CT2/stackPackCT2/strided_slice:output:0CT2/stack/1:output:0CT2/stack/2:output:0CT2/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT2/strided_slice_1StridedSliceCT2/stack:output:0"CT2/strided_slice_1/stack:output:0$CT2/strided_slice_1/stack_1:output:0$CT2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT2/conv2d_transpose/ReadVariableOpReadVariableOp,ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
CT2/conv2d_transposeConv2DBackpropInputCT2/stack:output:0+CT2/conv2d_transpose/ReadVariableOp:value:0'CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????

@*
paddingVALID*
strides
z
CT2/BiasAdd/ReadVariableOpReadVariableOp#ct2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
CT2/BiasAddBiasAddCT2/conv2d_transpose:output:0"CT2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

@o
CT2/leaky_re_lu_1/LeakyRelu	LeakyReluCT2/BiasAdd:output:0*/
_output_shapes
:?????????

@b
	CT3/ShapeShape)CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT3/strided_sliceStridedSliceCT3/Shape:output:0 CT3/strided_slice/stack:output:0"CT3/strided_slice/stack_1:output:0"CT3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
	CT3/stackPackCT3/strided_slice:output:0CT3/stack/1:output:0CT3/stack/2:output:0CT3/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT3/strided_slice_1StridedSliceCT3/stack:output:0"CT3/strided_slice_1/stack:output:0$CT3/strided_slice_1/stack_1:output:0$CT3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT3/conv2d_transpose/ReadVariableOpReadVariableOp,ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
CT3/conv2d_transposeConv2DBackpropInputCT3/stack:output:0+CT3/conv2d_transpose/ReadVariableOp:value:0)CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
z
CT3/BiasAdd/ReadVariableOpReadVariableOp#ct3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
CT3/BiasAddBiasAddCT3/conv2d_transpose:output:0"CT3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@o
CT3/leaky_re_lu_2/LeakyRelu	LeakyReluCT3/BiasAdd:output:0*/
_output_shapes
:?????????@b
	CT4/ShapeShape)CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT4/strided_sliceStridedSliceCT4/Shape:output:0 CT4/strided_slice/stack:output:0"CT4/strided_slice/stack_1:output:0"CT4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
	CT4/stackPackCT4/strided_slice:output:0CT4/stack/1:output:0CT4/stack/2:output:0CT4/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT4/strided_slice_1StridedSliceCT4/stack:output:0"CT4/strided_slice_1/stack:output:0$CT4/strided_slice_1/stack_1:output:0$CT4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT4/conv2d_transpose/ReadVariableOpReadVariableOp,ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
CT4/conv2d_transposeConv2DBackpropInputCT4/stack:output:0+CT4/conv2d_transpose/ReadVariableOp:value:0)CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
z
CT4/BiasAdd/ReadVariableOpReadVariableOp#ct4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
CT4/BiasAddBiasAddCT4/conv2d_transpose:output:0"CT4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@o
CT4/leaky_re_lu_3/LeakyRelu	LeakyReluCT4/BiasAdd:output:0*/
_output_shapes
:?????????@b
	CT5/ShapeShape)CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT5/strided_sliceStridedSliceCT5/Shape:output:0 CT5/strided_slice/stack:output:0"CT5/strided_slice/stack_1:output:0"CT5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
	CT5/stackPackCT5/strided_slice:output:0CT5/stack/1:output:0CT5/stack/2:output:0CT5/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT5/strided_slice_1StridedSliceCT5/stack:output:0"CT5/strided_slice_1/stack:output:0$CT5/strided_slice_1/stack_1:output:0$CT5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT5/conv2d_transpose/ReadVariableOpReadVariableOp,ct5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
CT5/conv2d_transposeConv2DBackpropInputCT5/stack:output:0+CT5/conv2d_transpose/ReadVariableOp:value:0)CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
z
CT5/BiasAdd/ReadVariableOpReadVariableOp#ct5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
CT5/BiasAddBiasAddCT5/conv2d_transpose:output:0"CT5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`
CT5/TanhTanhCT5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c
IdentityIdentityCT5/Tanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^CT1/BiasAdd/ReadVariableOp$^CT1/conv2d_transpose/ReadVariableOp^CT2/BiasAdd/ReadVariableOp$^CT2/conv2d_transpose/ReadVariableOp^CT3/BiasAdd/ReadVariableOp$^CT3/conv2d_transpose/ReadVariableOp^CT4/BiasAdd/ReadVariableOp$^CT4/conv2d_transpose/ReadVariableOp^CT5/BiasAdd/ReadVariableOp$^CT5/conv2d_transpose/ReadVariableOp^inp_D/BiasAdd/ReadVariableOp^inp_D/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 28
CT1/BiasAdd/ReadVariableOpCT1/BiasAdd/ReadVariableOp2J
#CT1/conv2d_transpose/ReadVariableOp#CT1/conv2d_transpose/ReadVariableOp28
CT2/BiasAdd/ReadVariableOpCT2/BiasAdd/ReadVariableOp2J
#CT2/conv2d_transpose/ReadVariableOp#CT2/conv2d_transpose/ReadVariableOp28
CT3/BiasAdd/ReadVariableOpCT3/BiasAdd/ReadVariableOp2J
#CT3/conv2d_transpose/ReadVariableOp#CT3/conv2d_transpose/ReadVariableOp28
CT4/BiasAdd/ReadVariableOpCT4/BiasAdd/ReadVariableOp2J
#CT4/conv2d_transpose/ReadVariableOp#CT4/conv2d_transpose/ReadVariableOp28
CT5/BiasAdd/ReadVariableOpCT5/BiasAdd/ReadVariableOp2J
#CT5/conv2d_transpose/ReadVariableOp#CT5/conv2d_transpose/ReadVariableOp2<
inp_D/BiasAdd/ReadVariableOpinp_D/BiasAdd/ReadVariableOp2:
inp_D/MatMul/ReadVariableOpinp_D/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_layer_call_fn_1465798

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1462889z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
?__inference_C2_layer_call_and_return_conditional_losses_1465722

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
?
?
%__inference_CT3_layer_call_fn_1465455

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT3_layer_call_and_return_conditional_losses_1463014?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1463011

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_2_layer_call_fn_1465818

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1463011z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1465144

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
A__inference_disc_layer_call_and_return_conditional_losses_1463700o
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
?!
?
G__inference_sequential_layer_call_and_return_conditional_losses_1463319

inputs 
inp_d_1463152:	d?
inp_d_1463154:	?%
ct1_1463197:  
ct1_1463199: %
ct2_1463226:@ 
ct2_1463228:@%
ct3_1463255:@@
ct3_1463257:@%
ct4_1463284:@@
ct4_1463286:@%
ct5_1463313:@
ct5_1463315:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinputsinp_d_1463152inp_d_1463154*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_inp_D_layer_call_and_return_conditional_losses_1463151?
reshape/PartitionedCallPartitionedCall&inp_D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1463171?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1463197ct1_1463199*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT1_layer_call_and_return_conditional_losses_1463196?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1463226ct2_1463228*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT2_layer_call_and_return_conditional_losses_1463225?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1463255ct3_1463257*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT3_layer_call_and_return_conditional_losses_1463254?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1463284ct4_1463286*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT4_layer_call_and_return_conditional_losses_1463283?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1463313ct5_1463315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT5_layer_call_and_return_conditional_losses_1463312{
IdentityIdentity$CT5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^CT1/StatefulPartitionedCall^CT2/StatefulPartitionedCall^CT3/StatefulPartitionedCall^CT4/StatefulPartitionedCall^CT5/StatefulPartitionedCall^inp_D/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 2:
CT1/StatefulPartitionedCallCT1/StatefulPartitionedCall2:
CT2/StatefulPartitionedCallCT2/StatefulPartitionedCall2:
CT3/StatefulPartitionedCallCT3/StatefulPartitionedCall2:
CT4/StatefulPartitionedCallCT4/StatefulPartitionedCall2:
CT5/StatefulPartitionedCallCT5/StatefulPartitionedCall2>
inp_D/StatefulPartitionedCallinp_D/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
%__inference_CT3_layer_call_fn_1465464

inputs!
unknown:@@
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
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT3_layer_call_and_return_conditional_losses_1463254w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????

@
 
_user_specified_nameinputs
?
E
)__inference_reshape_layer_call_fn_1465276

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1463171h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
@__inference_GAN_layer_call_and_return_conditional_losses_1464813

inputsB
/sequential_inp_d_matmul_readvariableop_resource:	d??
0sequential_inp_d_biasadd_readvariableop_resource:	?Q
7sequential_ct1_conv2d_transpose_readvariableop_resource:  <
.sequential_ct1_biasadd_readvariableop_resource: Q
7sequential_ct2_conv2d_transpose_readvariableop_resource:@ <
.sequential_ct2_biasadd_readvariableop_resource:@Q
7sequential_ct3_conv2d_transpose_readvariableop_resource:@@<
.sequential_ct3_biasadd_readvariableop_resource:@Q
7sequential_ct4_conv2d_transpose_readvariableop_resource:@@<
.sequential_ct4_biasadd_readvariableop_resource:@Q
7sequential_ct5_conv2d_transpose_readvariableop_resource:@<
.sequential_ct5_biasadd_readvariableop_resource:@
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
identity??disc/C1/BiasAdd/ReadVariableOp?disc/C1/Conv2D/ReadVariableOp?disc/C2/BiasAdd/ReadVariableOp?disc/C2/Conv2D/ReadVariableOp?disc/C3/BiasAdd/ReadVariableOp?disc/C3/Conv2D/ReadVariableOp?disc/D1/BiasAdd/ReadVariableOp?disc/D1/MatMul/ReadVariableOp?disc/D2/BiasAdd/ReadVariableOp?disc/D2/MatMul/ReadVariableOp?%sequential/CT1/BiasAdd/ReadVariableOp?.sequential/CT1/conv2d_transpose/ReadVariableOp?%sequential/CT2/BiasAdd/ReadVariableOp?.sequential/CT2/conv2d_transpose/ReadVariableOp?%sequential/CT3/BiasAdd/ReadVariableOp?.sequential/CT3/conv2d_transpose/ReadVariableOp?%sequential/CT4/BiasAdd/ReadVariableOp?.sequential/CT4/conv2d_transpose/ReadVariableOp?%sequential/CT5/BiasAdd/ReadVariableOp?.sequential/CT5/conv2d_transpose/ReadVariableOp?'sequential/inp_D/BiasAdd/ReadVariableOp?&sequential/inp_D/MatMul/ReadVariableOp?
&sequential/inp_D/MatMul/ReadVariableOpReadVariableOp/sequential_inp_d_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
sequential/inp_D/MatMulMatMulinputs.sequential/inp_D/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'sequential/inp_D/BiasAdd/ReadVariableOpReadVariableOp0sequential_inp_d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential/inp_D/BiasAddBiasAdd!sequential/inp_D/MatMul:product:0/sequential/inp_D/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
sequential/inp_D/ReluRelu!sequential/inp_D/BiasAdd:output:0*
T0*(
_output_shapes
:??????????k
sequential/reshape/ShapeShape#sequential/inp_D/Relu:activations:0*
T0*
_output_shapes
:p
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :d
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
sequential/reshape/ReshapeReshape#sequential/inp_D/Relu:activations:0)sequential/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? g
sequential/CT1/ShapeShape#sequential/reshape/Reshape:output:0*
T0*
_output_shapes
:l
"sequential/CT1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT1/strided_sliceStridedSlicesequential/CT1/Shape:output:0+sequential/CT1/strided_slice/stack:output:0-sequential/CT1/strided_slice/stack_1:output:0-sequential/CT1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT1/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
sequential/CT1/stackPack%sequential/CT1/strided_slice:output:0sequential/CT1/stack/1:output:0sequential/CT1/stack/2:output:0sequential/CT1/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT1/strided_slice_1StridedSlicesequential/CT1/stack:output:0-sequential/CT1/strided_slice_1/stack:output:0/sequential/CT1/strided_slice_1/stack_1:output:0/sequential/CT1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT1/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
sequential/CT1/conv2d_transposeConv2DBackpropInputsequential/CT1/stack:output:06sequential/CT1/conv2d_transpose/ReadVariableOp:value:0#sequential/reshape/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
%sequential/CT1/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential/CT1/BiasAddBiasAdd(sequential/CT1/conv2d_transpose:output:0-sequential/CT1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$sequential/CT1/leaky_re_lu/LeakyRelu	LeakyRelusequential/CT1/BiasAdd:output:0*/
_output_shapes
:????????? v
sequential/CT2/ShapeShape2sequential/CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT2/strided_sliceStridedSlicesequential/CT2/Shape:output:0+sequential/CT2/strided_slice/stack:output:0-sequential/CT2/strided_slice/stack_1:output:0-sequential/CT2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
X
sequential/CT2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :
X
sequential/CT2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
sequential/CT2/stackPack%sequential/CT2/strided_slice:output:0sequential/CT2/stack/1:output:0sequential/CT2/stack/2:output:0sequential/CT2/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT2/strided_slice_1StridedSlicesequential/CT2/stack:output:0-sequential/CT2/strided_slice_1/stack:output:0/sequential/CT2/strided_slice_1/stack_1:output:0/sequential/CT2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT2/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
sequential/CT2/conv2d_transposeConv2DBackpropInputsequential/CT2/stack:output:06sequential/CT2/conv2d_transpose/ReadVariableOp:value:02sequential/CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????

@*
paddingVALID*
strides
?
%sequential/CT2/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/CT2/BiasAddBiasAdd(sequential/CT2/conv2d_transpose:output:0-sequential/CT2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

@?
&sequential/CT2/leaky_re_lu_1/LeakyRelu	LeakyRelusequential/CT2/BiasAdd:output:0*/
_output_shapes
:?????????

@x
sequential/CT3/ShapeShape4sequential/CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT3/strided_sliceStridedSlicesequential/CT3/Shape:output:0+sequential/CT3/strided_slice/stack:output:0-sequential/CT3/strided_slice/stack_1:output:0-sequential/CT3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
sequential/CT3/stackPack%sequential/CT3/strided_slice:output:0sequential/CT3/stack/1:output:0sequential/CT3/stack/2:output:0sequential/CT3/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT3/strided_slice_1StridedSlicesequential/CT3/stack:output:0-sequential/CT3/strided_slice_1/stack:output:0/sequential/CT3/strided_slice_1/stack_1:output:0/sequential/CT3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT3/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
sequential/CT3/conv2d_transposeConv2DBackpropInputsequential/CT3/stack:output:06sequential/CT3/conv2d_transpose/ReadVariableOp:value:04sequential/CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
%sequential/CT3/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/CT3/BiasAddBiasAdd(sequential/CT3/conv2d_transpose:output:0-sequential/CT3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&sequential/CT3/leaky_re_lu_2/LeakyRelu	LeakyRelusequential/CT3/BiasAdd:output:0*/
_output_shapes
:?????????@x
sequential/CT4/ShapeShape4sequential/CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT4/strided_sliceStridedSlicesequential/CT4/Shape:output:0+sequential/CT4/strided_slice/stack:output:0-sequential/CT4/strided_slice/stack_1:output:0-sequential/CT4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
sequential/CT4/stackPack%sequential/CT4/strided_slice:output:0sequential/CT4/stack/1:output:0sequential/CT4/stack/2:output:0sequential/CT4/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT4/strided_slice_1StridedSlicesequential/CT4/stack:output:0-sequential/CT4/strided_slice_1/stack:output:0/sequential/CT4/strided_slice_1/stack_1:output:0/sequential/CT4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT4/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
sequential/CT4/conv2d_transposeConv2DBackpropInputsequential/CT4/stack:output:06sequential/CT4/conv2d_transpose/ReadVariableOp:value:04sequential/CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
%sequential/CT4/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/CT4/BiasAddBiasAdd(sequential/CT4/conv2d_transpose:output:0-sequential/CT4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&sequential/CT4/leaky_re_lu_3/LeakyRelu	LeakyRelusequential/CT4/BiasAdd:output:0*/
_output_shapes
:?????????@x
sequential/CT5/ShapeShape4sequential/CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT5/strided_sliceStridedSlicesequential/CT5/Shape:output:0+sequential/CT5/strided_slice/stack:output:0-sequential/CT5/strided_slice/stack_1:output:0-sequential/CT5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
sequential/CT5/stackPack%sequential/CT5/strided_slice:output:0sequential/CT5/stack/1:output:0sequential/CT5/stack/2:output:0sequential/CT5/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT5/strided_slice_1StridedSlicesequential/CT5/stack:output:0-sequential/CT5/strided_slice_1/stack:output:0/sequential/CT5/strided_slice_1/stack_1:output:0/sequential/CT5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT5/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
sequential/CT5/conv2d_transposeConv2DBackpropInputsequential/CT5/stack:output:06sequential/CT5/conv2d_transpose/ReadVariableOp:value:04sequential/CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
%sequential/CT5/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/CT5/BiasAddBiasAdd(sequential/CT5/conv2d_transpose:output:0-sequential/CT5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????v
sequential/CT5/TanhTanhsequential/CT5/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
disc/C1/Conv2D/ReadVariableOpReadVariableOp&disc_c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
disc/C1/Conv2DConv2Dsequential/CT5/Tanh:y:0%disc/C1/Conv2D/ReadVariableOp:value:0*
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
:??????????
NoOpNoOp^disc/C1/BiasAdd/ReadVariableOp^disc/C1/Conv2D/ReadVariableOp^disc/C2/BiasAdd/ReadVariableOp^disc/C2/Conv2D/ReadVariableOp^disc/C3/BiasAdd/ReadVariableOp^disc/C3/Conv2D/ReadVariableOp^disc/D1/BiasAdd/ReadVariableOp^disc/D1/MatMul/ReadVariableOp^disc/D2/BiasAdd/ReadVariableOp^disc/D2/MatMul/ReadVariableOp&^sequential/CT1/BiasAdd/ReadVariableOp/^sequential/CT1/conv2d_transpose/ReadVariableOp&^sequential/CT2/BiasAdd/ReadVariableOp/^sequential/CT2/conv2d_transpose/ReadVariableOp&^sequential/CT3/BiasAdd/ReadVariableOp/^sequential/CT3/conv2d_transpose/ReadVariableOp&^sequential/CT4/BiasAdd/ReadVariableOp/^sequential/CT4/conv2d_transpose/ReadVariableOp&^sequential/CT5/BiasAdd/ReadVariableOp/^sequential/CT5/conv2d_transpose/ReadVariableOp(^sequential/inp_D/BiasAdd/ReadVariableOp'^sequential/inp_D/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 2@
disc/C1/BiasAdd/ReadVariableOpdisc/C1/BiasAdd/ReadVariableOp2>
disc/C1/Conv2D/ReadVariableOpdisc/C1/Conv2D/ReadVariableOp2@
disc/C2/BiasAdd/ReadVariableOpdisc/C2/BiasAdd/ReadVariableOp2>
disc/C2/Conv2D/ReadVariableOpdisc/C2/Conv2D/ReadVariableOp2@
disc/C3/BiasAdd/ReadVariableOpdisc/C3/BiasAdd/ReadVariableOp2>
disc/C3/Conv2D/ReadVariableOpdisc/C3/Conv2D/ReadVariableOp2@
disc/D1/BiasAdd/ReadVariableOpdisc/D1/BiasAdd/ReadVariableOp2>
disc/D1/MatMul/ReadVariableOpdisc/D1/MatMul/ReadVariableOp2@
disc/D2/BiasAdd/ReadVariableOpdisc/D2/BiasAdd/ReadVariableOp2>
disc/D2/MatMul/ReadVariableOpdisc/D2/MatMul/ReadVariableOp2N
%sequential/CT1/BiasAdd/ReadVariableOp%sequential/CT1/BiasAdd/ReadVariableOp2`
.sequential/CT1/conv2d_transpose/ReadVariableOp.sequential/CT1/conv2d_transpose/ReadVariableOp2N
%sequential/CT2/BiasAdd/ReadVariableOp%sequential/CT2/BiasAdd/ReadVariableOp2`
.sequential/CT2/conv2d_transpose/ReadVariableOp.sequential/CT2/conv2d_transpose/ReadVariableOp2N
%sequential/CT3/BiasAdd/ReadVariableOp%sequential/CT3/BiasAdd/ReadVariableOp2`
.sequential/CT3/conv2d_transpose/ReadVariableOp.sequential/CT3/conv2d_transpose/ReadVariableOp2N
%sequential/CT4/BiasAdd/ReadVariableOp%sequential/CT4/BiasAdd/ReadVariableOp2`
.sequential/CT4/conv2d_transpose/ReadVariableOp.sequential/CT4/conv2d_transpose/ReadVariableOp2N
%sequential/CT5/BiasAdd/ReadVariableOp%sequential/CT5/BiasAdd/ReadVariableOp2`
.sequential/CT5/conv2d_transpose/ReadVariableOp.sequential/CT5/conv2d_transpose/ReadVariableOp2R
'sequential/inp_D/BiasAdd/ReadVariableOp'sequential/inp_D/BiasAdd/ReadVariableOp2P
&sequential/inp_D/MatMul/ReadVariableOp&sequential/inp_D/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
@__inference_GAN_layer_call_and_return_conditional_losses_1464342
input_2%
sequential_1464295:	d?!
sequential_1464297:	?,
sequential_1464299:   
sequential_1464301: ,
sequential_1464303:@  
sequential_1464305:@,
sequential_1464307:@@ 
sequential_1464309:@,
sequential_1464311:@@ 
sequential_1464313:@,
sequential_1464315:@ 
sequential_1464317:&
disc_1464320: 
disc_1464322: &
disc_1464324: @
disc_1464326:@&
disc_1464328:@ 
disc_1464330: 
disc_1464332:	?@
disc_1464334:@
disc_1464336:@
disc_1464338:
identity??disc/StatefulPartitionedCall?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1464295sequential_1464297sequential_1464299sequential_1464301sequential_1464303sequential_1464305sequential_1464307sequential_1464309sequential_1464311sequential_1464313sequential_1464315sequential_1464317*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463473?
disc/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0disc_1464320disc_1464322disc_1464324disc_1464326disc_1464328disc_1464330disc_1464332disc_1464334disc_1464336disc_1464338*
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
A__inference_disc_layer_call_and_return_conditional_losses_1463836t
IdentityIdentity%disc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^disc/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 2<
disc/StatefulPartitionedCalldisc/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_2
?
?
%__inference_CT2_layer_call_fn_1465384

inputs!
unknown:@ 
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
:?????????

@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT2_layer_call_and_return_conditional_losses_1463225w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????

@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
?__inference_C3_layer_call_and_return_conditional_losses_1463651

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
?
?
%__inference_signature_wrapper_1464399
input_2
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13: @

unknown_14:@$

unknown_15:@ 

unknown_16: 

unknown_17:	?@

unknown_18:@

unknown_19:@

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_1462848o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_2
?
?
,__inference_sequential_layer_call_fn_1464842

inputs
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463319w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
,__inference_sequential_layer_call_fn_1463529
inp_d_input
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinp_d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463473w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????d
%
_user_specified_nameinp_D_input
?$
?
@__inference_CT2_layer_call_and_return_conditional_losses_1465422

inputsB
(conv2d_transpose_readvariableop_resource:@ -
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+???????????????????????????@?
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
%__inference_CT4_layer_call_fn_1465535

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT4_layer_call_and_return_conditional_losses_1463075?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1465813

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1465803

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?
 __inference__traced_save_1466102
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop+
'savev2_inp_d_kernel_read_readvariableop)
%savev2_inp_d_bias_read_readvariableop)
%savev2_ct1_kernel_read_readvariableop'
#savev2_ct1_bias_read_readvariableop)
%savev2_ct2_kernel_read_readvariableop'
#savev2_ct2_bias_read_readvariableop)
%savev2_ct3_kernel_read_readvariableop'
#savev2_ct3_bias_read_readvariableop)
%savev2_ct4_kernel_read_readvariableop'
#savev2_ct4_bias_read_readvariableop)
%savev2_ct5_kernel_read_readvariableop'
#savev2_ct5_bias_read_readvariableop(
$savev2_c1_kernel_read_readvariableop&
"savev2_c1_bias_read_readvariableop(
$savev2_c2_kernel_read_readvariableop&
"savev2_c2_bias_read_readvariableop(
$savev2_c3_kernel_read_readvariableop&
"savev2_c3_bias_read_readvariableop(
$savev2_d1_kernel_read_readvariableop&
"savev2_d1_bias_read_readvariableop(
$savev2_d2_kernel_read_readvariableop&
"savev2_d2_bias_read_readvariableop*
&savev2_adam_iter_1_read_readvariableop	,
(savev2_adam_beta_1_1_read_readvariableop,
(savev2_adam_beta_2_1_read_readvariableop+
'savev2_adam_decay_1_read_readvariableop3
/savev2_adam_learning_rate_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop2
.savev2_adam_inp_d_kernel_m_read_readvariableop0
,savev2_adam_inp_d_bias_m_read_readvariableop0
,savev2_adam_ct1_kernel_m_read_readvariableop.
*savev2_adam_ct1_bias_m_read_readvariableop0
,savev2_adam_ct2_kernel_m_read_readvariableop.
*savev2_adam_ct2_bias_m_read_readvariableop0
,savev2_adam_ct3_kernel_m_read_readvariableop.
*savev2_adam_ct3_bias_m_read_readvariableop0
,savev2_adam_ct4_kernel_m_read_readvariableop.
*savev2_adam_ct4_bias_m_read_readvariableop0
,savev2_adam_ct5_kernel_m_read_readvariableop.
*savev2_adam_ct5_bias_m_read_readvariableop2
.savev2_adam_inp_d_kernel_v_read_readvariableop0
,savev2_adam_inp_d_bias_v_read_readvariableop0
,savev2_adam_ct1_kernel_v_read_readvariableop.
*savev2_adam_ct1_bias_v_read_readvariableop0
,savev2_adam_ct2_kernel_v_read_readvariableop.
*savev2_adam_ct2_bias_v_read_readvariableop0
,savev2_adam_ct3_kernel_v_read_readvariableop.
*savev2_adam_ct3_bias_v_read_readvariableop0
,savev2_adam_ct4_kernel_v_read_readvariableop.
*savev2_adam_ct4_bias_v_read_readvariableop0
,savev2_adam_ct5_kernel_v_read_readvariableop.
*savev2_adam_ct5_bias_v_read_readvariableop/
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
: ?*
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?)
value?)B?)SB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?
value?B?SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop'savev2_inp_d_kernel_read_readvariableop%savev2_inp_d_bias_read_readvariableop%savev2_ct1_kernel_read_readvariableop#savev2_ct1_bias_read_readvariableop%savev2_ct2_kernel_read_readvariableop#savev2_ct2_bias_read_readvariableop%savev2_ct3_kernel_read_readvariableop#savev2_ct3_bias_read_readvariableop%savev2_ct4_kernel_read_readvariableop#savev2_ct4_bias_read_readvariableop%savev2_ct5_kernel_read_readvariableop#savev2_ct5_bias_read_readvariableop$savev2_c1_kernel_read_readvariableop"savev2_c1_bias_read_readvariableop$savev2_c2_kernel_read_readvariableop"savev2_c2_bias_read_readvariableop$savev2_c3_kernel_read_readvariableop"savev2_c3_bias_read_readvariableop$savev2_d1_kernel_read_readvariableop"savev2_d1_bias_read_readvariableop$savev2_d2_kernel_read_readvariableop"savev2_d2_bias_read_readvariableop&savev2_adam_iter_1_read_readvariableop(savev2_adam_beta_1_1_read_readvariableop(savev2_adam_beta_2_1_read_readvariableop'savev2_adam_decay_1_read_readvariableop/savev2_adam_learning_rate_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop.savev2_adam_inp_d_kernel_m_read_readvariableop,savev2_adam_inp_d_bias_m_read_readvariableop,savev2_adam_ct1_kernel_m_read_readvariableop*savev2_adam_ct1_bias_m_read_readvariableop,savev2_adam_ct2_kernel_m_read_readvariableop*savev2_adam_ct2_bias_m_read_readvariableop,savev2_adam_ct3_kernel_m_read_readvariableop*savev2_adam_ct3_bias_m_read_readvariableop,savev2_adam_ct4_kernel_m_read_readvariableop*savev2_adam_ct4_bias_m_read_readvariableop,savev2_adam_ct5_kernel_m_read_readvariableop*savev2_adam_ct5_bias_m_read_readvariableop.savev2_adam_inp_d_kernel_v_read_readvariableop,savev2_adam_inp_d_bias_v_read_readvariableop,savev2_adam_ct1_kernel_v_read_readvariableop*savev2_adam_ct1_bias_v_read_readvariableop,savev2_adam_ct2_kernel_v_read_readvariableop*savev2_adam_ct2_bias_v_read_readvariableop,savev2_adam_ct3_kernel_v_read_readvariableop*savev2_adam_ct3_bias_v_read_readvariableop,savev2_adam_ct4_kernel_v_read_readvariableop*savev2_adam_ct4_bias_v_read_readvariableop,savev2_adam_ct5_kernel_v_read_readvariableop*savev2_adam_ct5_bias_v_read_readvariableop+savev2_adam_c1_kernel_m_read_readvariableop)savev2_adam_c1_bias_m_read_readvariableop+savev2_adam_c2_kernel_m_read_readvariableop)savev2_adam_c2_bias_m_read_readvariableop+savev2_adam_c3_kernel_m_read_readvariableop)savev2_adam_c3_bias_m_read_readvariableop+savev2_adam_d1_kernel_m_read_readvariableop)savev2_adam_d1_bias_m_read_readvariableop+savev2_adam_d2_kernel_m_read_readvariableop)savev2_adam_d2_bias_m_read_readvariableop+savev2_adam_c1_kernel_v_read_readvariableop)savev2_adam_c1_bias_v_read_readvariableop+savev2_adam_c2_kernel_v_read_readvariableop)savev2_adam_c2_bias_v_read_readvariableop+savev2_adam_c3_kernel_v_read_readvariableop)savev2_adam_c3_bias_v_read_readvariableop+savev2_adam_d1_kernel_v_read_readvariableop)savev2_adam_d1_bias_v_read_readvariableop+savev2_adam_d2_kernel_v_read_readvariableop)savev2_adam_d2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *a
dtypesW
U2S		?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :	d?:?:  : :@ :@:@@:@:@@:@:@:: : : @:@:@ : :	?@:@:@:: : : : : : : : : : : :	d?:?:  : :@ :@:@@:@:@@:@:@::	d?:?:  : :@ :@:@@:@:@@:@:@:: : : @:@:@ : :	?@:@:@:: : : @:@:@ : :	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	d?:!

_output_shapes	
:?:,(
&
_output_shapes
:  : 	

_output_shapes
: :,
(
&
_output_shapes
:@ : 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::,(
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :%'!

_output_shapes
:	d?:!(

_output_shapes	
:?:,)(
&
_output_shapes
:  : *

_output_shapes
: :,+(
&
_output_shapes
:@ : ,

_output_shapes
:@:,-(
&
_output_shapes
:@@: .

_output_shapes
:@:,/(
&
_output_shapes
:@@: 0

_output_shapes
:@:,1(
&
_output_shapes
:@: 2

_output_shapes
::%3!

_output_shapes
:	d?:!4

_output_shapes	
:?:,5(
&
_output_shapes
:  : 6

_output_shapes
: :,7(
&
_output_shapes
:@ : 8

_output_shapes
:@:,9(
&
_output_shapes
:@@: :

_output_shapes
:@:,;(
&
_output_shapes
:@@: <

_output_shapes
:@:,=(
&
_output_shapes
:@: >

_output_shapes
::,?(
&
_output_shapes
: : @

_output_shapes
: :,A(
&
_output_shapes
: @: B

_output_shapes
:@:,C(
&
_output_shapes
:@ : D

_output_shapes
: :%E!

_output_shapes
:	?@: F

_output_shapes
:@:$G 

_output_shapes

:@: H

_output_shapes
::,I(
&
_output_shapes
: : J

_output_shapes
: :,K(
&
_output_shapes
: @: L

_output_shapes
:@:,M(
&
_output_shapes
:@ : N

_output_shapes
: :%O!

_output_shapes
:	?@: P

_output_shapes
:@:$Q 

_output_shapes

:@: R

_output_shapes
::S

_output_shapes
: 
?
?
,__inference_sequential_layer_call_fn_1464871

inputs
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463473w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1465833

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
@__inference_CT3_layer_call_and_return_conditional_losses_1463254

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@|
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????

@
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1463884
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
A__inference_disc_layer_call_and_return_conditional_losses_1463836o
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
?"
?
G__inference_sequential_layer_call_and_return_conditional_losses_1463599
inp_d_input 
inp_d_1463567:	d?
inp_d_1463569:	?%
ct1_1463573:  
ct1_1463575: %
ct2_1463578:@ 
ct2_1463580:@%
ct3_1463583:@@
ct3_1463585:@%
ct4_1463588:@@
ct4_1463590:@%
ct5_1463593:@
ct5_1463595:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinp_d_inputinp_d_1463567inp_d_1463569*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_inp_D_layer_call_and_return_conditional_losses_1463151?
reshape/PartitionedCallPartitionedCall&inp_D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1463171?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1463573ct1_1463575*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT1_layer_call_and_return_conditional_losses_1463196?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1463578ct2_1463580*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT2_layer_call_and_return_conditional_losses_1463225?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1463583ct3_1463585*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT3_layer_call_and_return_conditional_losses_1463254?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1463588ct4_1463590*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT4_layer_call_and_return_conditional_losses_1463283?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1463593ct5_1463595*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT5_layer_call_and_return_conditional_losses_1463312{
IdentityIdentity$CT5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^CT1/StatefulPartitionedCall^CT2/StatefulPartitionedCall^CT3/StatefulPartitionedCall^CT4/StatefulPartitionedCall^CT5/StatefulPartitionedCall^inp_D/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 2:
CT1/StatefulPartitionedCallCT1/StatefulPartitionedCall2:
CT2/StatefulPartitionedCallCT2/StatefulPartitionedCall2:
CT3/StatefulPartitionedCallCT3/StatefulPartitionedCall2:
CT4/StatefulPartitionedCallCT4/StatefulPartitionedCall2:
CT5/StatefulPartitionedCallCT5/StatefulPartitionedCall2>
inp_D/StatefulPartitionedCallinp_D/StatefulPartitionedCall:T P
'
_output_shapes
:?????????d
%
_user_specified_nameinp_D_input
?!
?
@__inference_CT5_layer_call_and_return_conditional_losses_1463126

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
@__inference_CT2_layer_call_and_return_conditional_losses_1463225

inputsB
(conv2d_transpose_readvariableop_resource:@ -
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :
I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :
I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????

@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

@g
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????

@|
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????

@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
@__inference_GAN_layer_call_and_return_conditional_losses_1464655

inputsB
/sequential_inp_d_matmul_readvariableop_resource:	d??
0sequential_inp_d_biasadd_readvariableop_resource:	?Q
7sequential_ct1_conv2d_transpose_readvariableop_resource:  <
.sequential_ct1_biasadd_readvariableop_resource: Q
7sequential_ct2_conv2d_transpose_readvariableop_resource:@ <
.sequential_ct2_biasadd_readvariableop_resource:@Q
7sequential_ct3_conv2d_transpose_readvariableop_resource:@@<
.sequential_ct3_biasadd_readvariableop_resource:@Q
7sequential_ct4_conv2d_transpose_readvariableop_resource:@@<
.sequential_ct4_biasadd_readvariableop_resource:@Q
7sequential_ct5_conv2d_transpose_readvariableop_resource:@<
.sequential_ct5_biasadd_readvariableop_resource:@
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
identity??disc/C1/BiasAdd/ReadVariableOp?disc/C1/Conv2D/ReadVariableOp?disc/C2/BiasAdd/ReadVariableOp?disc/C2/Conv2D/ReadVariableOp?disc/C3/BiasAdd/ReadVariableOp?disc/C3/Conv2D/ReadVariableOp?disc/D1/BiasAdd/ReadVariableOp?disc/D1/MatMul/ReadVariableOp?disc/D2/BiasAdd/ReadVariableOp?disc/D2/MatMul/ReadVariableOp?%sequential/CT1/BiasAdd/ReadVariableOp?.sequential/CT1/conv2d_transpose/ReadVariableOp?%sequential/CT2/BiasAdd/ReadVariableOp?.sequential/CT2/conv2d_transpose/ReadVariableOp?%sequential/CT3/BiasAdd/ReadVariableOp?.sequential/CT3/conv2d_transpose/ReadVariableOp?%sequential/CT4/BiasAdd/ReadVariableOp?.sequential/CT4/conv2d_transpose/ReadVariableOp?%sequential/CT5/BiasAdd/ReadVariableOp?.sequential/CT5/conv2d_transpose/ReadVariableOp?'sequential/inp_D/BiasAdd/ReadVariableOp?&sequential/inp_D/MatMul/ReadVariableOp?
&sequential/inp_D/MatMul/ReadVariableOpReadVariableOp/sequential_inp_d_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
sequential/inp_D/MatMulMatMulinputs.sequential/inp_D/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'sequential/inp_D/BiasAdd/ReadVariableOpReadVariableOp0sequential_inp_d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential/inp_D/BiasAddBiasAdd!sequential/inp_D/MatMul:product:0/sequential/inp_D/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
sequential/inp_D/ReluRelu!sequential/inp_D/BiasAdd:output:0*
T0*(
_output_shapes
:??????????k
sequential/reshape/ShapeShape#sequential/inp_D/Relu:activations:0*
T0*
_output_shapes
:p
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :d
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
sequential/reshape/ReshapeReshape#sequential/inp_D/Relu:activations:0)sequential/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? g
sequential/CT1/ShapeShape#sequential/reshape/Reshape:output:0*
T0*
_output_shapes
:l
"sequential/CT1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT1/strided_sliceStridedSlicesequential/CT1/Shape:output:0+sequential/CT1/strided_slice/stack:output:0-sequential/CT1/strided_slice/stack_1:output:0-sequential/CT1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT1/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
sequential/CT1/stackPack%sequential/CT1/strided_slice:output:0sequential/CT1/stack/1:output:0sequential/CT1/stack/2:output:0sequential/CT1/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT1/strided_slice_1StridedSlicesequential/CT1/stack:output:0-sequential/CT1/strided_slice_1/stack:output:0/sequential/CT1/strided_slice_1/stack_1:output:0/sequential/CT1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT1/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
sequential/CT1/conv2d_transposeConv2DBackpropInputsequential/CT1/stack:output:06sequential/CT1/conv2d_transpose/ReadVariableOp:value:0#sequential/reshape/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
%sequential/CT1/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential/CT1/BiasAddBiasAdd(sequential/CT1/conv2d_transpose:output:0-sequential/CT1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$sequential/CT1/leaky_re_lu/LeakyRelu	LeakyRelusequential/CT1/BiasAdd:output:0*/
_output_shapes
:????????? v
sequential/CT2/ShapeShape2sequential/CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT2/strided_sliceStridedSlicesequential/CT2/Shape:output:0+sequential/CT2/strided_slice/stack:output:0-sequential/CT2/strided_slice/stack_1:output:0-sequential/CT2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
X
sequential/CT2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :
X
sequential/CT2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
sequential/CT2/stackPack%sequential/CT2/strided_slice:output:0sequential/CT2/stack/1:output:0sequential/CT2/stack/2:output:0sequential/CT2/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT2/strided_slice_1StridedSlicesequential/CT2/stack:output:0-sequential/CT2/strided_slice_1/stack:output:0/sequential/CT2/strided_slice_1/stack_1:output:0/sequential/CT2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT2/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
sequential/CT2/conv2d_transposeConv2DBackpropInputsequential/CT2/stack:output:06sequential/CT2/conv2d_transpose/ReadVariableOp:value:02sequential/CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????

@*
paddingVALID*
strides
?
%sequential/CT2/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/CT2/BiasAddBiasAdd(sequential/CT2/conv2d_transpose:output:0-sequential/CT2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

@?
&sequential/CT2/leaky_re_lu_1/LeakyRelu	LeakyRelusequential/CT2/BiasAdd:output:0*/
_output_shapes
:?????????

@x
sequential/CT3/ShapeShape4sequential/CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT3/strided_sliceStridedSlicesequential/CT3/Shape:output:0+sequential/CT3/strided_slice/stack:output:0-sequential/CT3/strided_slice/stack_1:output:0-sequential/CT3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
sequential/CT3/stackPack%sequential/CT3/strided_slice:output:0sequential/CT3/stack/1:output:0sequential/CT3/stack/2:output:0sequential/CT3/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT3/strided_slice_1StridedSlicesequential/CT3/stack:output:0-sequential/CT3/strided_slice_1/stack:output:0/sequential/CT3/strided_slice_1/stack_1:output:0/sequential/CT3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT3/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
sequential/CT3/conv2d_transposeConv2DBackpropInputsequential/CT3/stack:output:06sequential/CT3/conv2d_transpose/ReadVariableOp:value:04sequential/CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
%sequential/CT3/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/CT3/BiasAddBiasAdd(sequential/CT3/conv2d_transpose:output:0-sequential/CT3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&sequential/CT3/leaky_re_lu_2/LeakyRelu	LeakyRelusequential/CT3/BiasAdd:output:0*/
_output_shapes
:?????????@x
sequential/CT4/ShapeShape4sequential/CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT4/strided_sliceStridedSlicesequential/CT4/Shape:output:0+sequential/CT4/strided_slice/stack:output:0-sequential/CT4/strided_slice/stack_1:output:0-sequential/CT4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
sequential/CT4/stackPack%sequential/CT4/strided_slice:output:0sequential/CT4/stack/1:output:0sequential/CT4/stack/2:output:0sequential/CT4/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT4/strided_slice_1StridedSlicesequential/CT4/stack:output:0-sequential/CT4/strided_slice_1/stack:output:0/sequential/CT4/strided_slice_1/stack_1:output:0/sequential/CT4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT4/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
sequential/CT4/conv2d_transposeConv2DBackpropInputsequential/CT4/stack:output:06sequential/CT4/conv2d_transpose/ReadVariableOp:value:04sequential/CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
%sequential/CT4/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential/CT4/BiasAddBiasAdd(sequential/CT4/conv2d_transpose:output:0-sequential/CT4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
&sequential/CT4/leaky_re_lu_3/LeakyRelu	LeakyRelusequential/CT4/BiasAdd:output:0*/
_output_shapes
:?????????@x
sequential/CT5/ShapeShape4sequential/CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:l
"sequential/CT5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/CT5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/CT5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT5/strided_sliceStridedSlicesequential/CT5/Shape:output:0+sequential/CT5/strided_slice/stack:output:0-sequential/CT5/strided_slice/stack_1:output:0-sequential/CT5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
sequential/CT5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X
sequential/CT5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
sequential/CT5/stackPack%sequential/CT5/strided_slice:output:0sequential/CT5/stack/1:output:0sequential/CT5/stack/2:output:0sequential/CT5/stack/3:output:0*
N*
T0*
_output_shapes
:n
$sequential/CT5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/CT5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/CT5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/CT5/strided_slice_1StridedSlicesequential/CT5/stack:output:0-sequential/CT5/strided_slice_1/stack:output:0/sequential/CT5/strided_slice_1/stack_1:output:0/sequential/CT5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential/CT5/conv2d_transpose/ReadVariableOpReadVariableOp7sequential_ct5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
sequential/CT5/conv2d_transposeConv2DBackpropInputsequential/CT5/stack:output:06sequential/CT5/conv2d_transpose/ReadVariableOp:value:04sequential/CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
%sequential/CT5/BiasAdd/ReadVariableOpReadVariableOp.sequential_ct5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/CT5/BiasAddBiasAdd(sequential/CT5/conv2d_transpose:output:0-sequential/CT5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????v
sequential/CT5/TanhTanhsequential/CT5/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
disc/C1/Conv2D/ReadVariableOpReadVariableOp&disc_c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
disc/C1/Conv2DConv2Dsequential/CT5/Tanh:y:0%disc/C1/Conv2D/ReadVariableOp:value:0*
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
:??????????
NoOpNoOp^disc/C1/BiasAdd/ReadVariableOp^disc/C1/Conv2D/ReadVariableOp^disc/C2/BiasAdd/ReadVariableOp^disc/C2/Conv2D/ReadVariableOp^disc/C3/BiasAdd/ReadVariableOp^disc/C3/Conv2D/ReadVariableOp^disc/D1/BiasAdd/ReadVariableOp^disc/D1/MatMul/ReadVariableOp^disc/D2/BiasAdd/ReadVariableOp^disc/D2/MatMul/ReadVariableOp&^sequential/CT1/BiasAdd/ReadVariableOp/^sequential/CT1/conv2d_transpose/ReadVariableOp&^sequential/CT2/BiasAdd/ReadVariableOp/^sequential/CT2/conv2d_transpose/ReadVariableOp&^sequential/CT3/BiasAdd/ReadVariableOp/^sequential/CT3/conv2d_transpose/ReadVariableOp&^sequential/CT4/BiasAdd/ReadVariableOp/^sequential/CT4/conv2d_transpose/ReadVariableOp&^sequential/CT5/BiasAdd/ReadVariableOp/^sequential/CT5/conv2d_transpose/ReadVariableOp(^sequential/inp_D/BiasAdd/ReadVariableOp'^sequential/inp_D/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 2@
disc/C1/BiasAdd/ReadVariableOpdisc/C1/BiasAdd/ReadVariableOp2>
disc/C1/Conv2D/ReadVariableOpdisc/C1/Conv2D/ReadVariableOp2@
disc/C2/BiasAdd/ReadVariableOpdisc/C2/BiasAdd/ReadVariableOp2>
disc/C2/Conv2D/ReadVariableOpdisc/C2/Conv2D/ReadVariableOp2@
disc/C3/BiasAdd/ReadVariableOpdisc/C3/BiasAdd/ReadVariableOp2>
disc/C3/Conv2D/ReadVariableOpdisc/C3/Conv2D/ReadVariableOp2@
disc/D1/BiasAdd/ReadVariableOpdisc/D1/BiasAdd/ReadVariableOp2>
disc/D1/MatMul/ReadVariableOpdisc/D1/MatMul/ReadVariableOp2@
disc/D2/BiasAdd/ReadVariableOpdisc/D2/BiasAdd/ReadVariableOp2>
disc/D2/MatMul/ReadVariableOpdisc/D2/MatMul/ReadVariableOp2N
%sequential/CT1/BiasAdd/ReadVariableOp%sequential/CT1/BiasAdd/ReadVariableOp2`
.sequential/CT1/conv2d_transpose/ReadVariableOp.sequential/CT1/conv2d_transpose/ReadVariableOp2N
%sequential/CT2/BiasAdd/ReadVariableOp%sequential/CT2/BiasAdd/ReadVariableOp2`
.sequential/CT2/conv2d_transpose/ReadVariableOp.sequential/CT2/conv2d_transpose/ReadVariableOp2N
%sequential/CT3/BiasAdd/ReadVariableOp%sequential/CT3/BiasAdd/ReadVariableOp2`
.sequential/CT3/conv2d_transpose/ReadVariableOp.sequential/CT3/conv2d_transpose/ReadVariableOp2N
%sequential/CT4/BiasAdd/ReadVariableOp%sequential/CT4/BiasAdd/ReadVariableOp2`
.sequential/CT4/conv2d_transpose/ReadVariableOp.sequential/CT4/conv2d_transpose/ReadVariableOp2N
%sequential/CT5/BiasAdd/ReadVariableOp%sequential/CT5/BiasAdd/ReadVariableOp2`
.sequential/CT5/conv2d_transpose/ReadVariableOp.sequential/CT5/conv2d_transpose/ReadVariableOp2R
'sequential/inp_D/BiasAdd/ReadVariableOp'sequential/inp_D/BiasAdd/ReadVariableOp2P
&sequential/inp_D/MatMul/ReadVariableOp&sequential/inp_D/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
%__inference_CT2_layer_call_fn_1465375

inputs!
unknown:@ 
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT2_layer_call_and_return_conditional_losses_1462953?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?!
?
G__inference_sequential_layer_call_and_return_conditional_losses_1463473

inputs 
inp_d_1463441:	d?
inp_d_1463443:	?%
ct1_1463447:  
ct1_1463449: %
ct2_1463452:@ 
ct2_1463454:@%
ct3_1463457:@@
ct3_1463459:@%
ct4_1463462:@@
ct4_1463464:@%
ct5_1463467:@
ct5_1463469:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinputsinp_d_1463441inp_d_1463443*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_inp_D_layer_call_and_return_conditional_losses_1463151?
reshape/PartitionedCallPartitionedCall&inp_D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1463171?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1463447ct1_1463449*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT1_layer_call_and_return_conditional_losses_1463196?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1463452ct2_1463454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT2_layer_call_and_return_conditional_losses_1463225?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1463457ct3_1463459*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT3_layer_call_and_return_conditional_losses_1463254?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1463462ct4_1463464*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT4_layer_call_and_return_conditional_losses_1463283?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1463467ct5_1463469*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT5_layer_call_and_return_conditional_losses_1463312{
IdentityIdentity$CT5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^CT1/StatefulPartitionedCall^CT2/StatefulPartitionedCall^CT3/StatefulPartitionedCall^CT4/StatefulPartitionedCall^CT5/StatefulPartitionedCall^inp_D/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 2:
CT1/StatefulPartitionedCallCT1/StatefulPartitionedCall2:
CT2/StatefulPartitionedCallCT2/StatefulPartitionedCall2:
CT3/StatefulPartitionedCallCT3/StatefulPartitionedCall2:
CT4/StatefulPartitionedCallCT4/StatefulPartitionedCall2:
CT5/StatefulPartitionedCallCT5/StatefulPartitionedCall2>
inp_D/StatefulPartitionedCallinp_D/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
%__inference_CT1_layer_call_fn_1465308

inputs!
unknown:  
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
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT1_layer_call_and_return_conditional_losses_1463196w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
%__inference_GAN_layer_call_fn_1464242
input_2
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13: @

unknown_14:@$

unknown_15:@ 

unknown_16: 

unknown_17:	?@

unknown_18:@

unknown_19:@

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_GAN_layer_call_and_return_conditional_losses_1464146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_2
?
?
@__inference_CT2_layer_call_and_return_conditional_losses_1465446

inputsB
(conv2d_transpose_readvariableop_resource:@ -
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :
I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :
I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????

@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

@g
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????

@|
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????

@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
%__inference_CT5_layer_call_fn_1465615

inputs!
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT5_layer_call_and_return_conditional_losses_1463126?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?#
?
@__inference_CT1_layer_call_and_return_conditional_losses_1462892

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? ?
leaky_re_lu/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1462889?
IdentityIdentity$leaky_re_lu/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
?__inference_D1_layer_call_and_return_conditional_losses_1465773

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
?__inference_C1_layer_call_and_return_conditional_losses_1465702

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
?"
?
G__inference_sequential_layer_call_and_return_conditional_losses_1463564
inp_d_input 
inp_d_1463532:	d?
inp_d_1463534:	?%
ct1_1463538:  
ct1_1463540: %
ct2_1463543:@ 
ct2_1463545:@%
ct3_1463548:@@
ct3_1463550:@%
ct4_1463553:@@
ct4_1463555:@%
ct5_1463558:@
ct5_1463560:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinp_d_inputinp_d_1463532inp_d_1463534*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_inp_D_layer_call_and_return_conditional_losses_1463151?
reshape/PartitionedCallPartitionedCall&inp_D/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1463171?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1463538ct1_1463540*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT1_layer_call_and_return_conditional_losses_1463196?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1463543ct2_1463545*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT2_layer_call_and_return_conditional_losses_1463225?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1463548ct3_1463550*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT3_layer_call_and_return_conditional_losses_1463254?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1463553ct4_1463555*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT4_layer_call_and_return_conditional_losses_1463283?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1463558ct5_1463560*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_CT5_layer_call_and_return_conditional_losses_1463312{
IdentityIdentity$CT5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^CT1/StatefulPartitionedCall^CT2/StatefulPartitionedCall^CT3/StatefulPartitionedCall^CT4/StatefulPartitionedCall^CT5/StatefulPartitionedCall^inp_D/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 2:
CT1/StatefulPartitionedCallCT1/StatefulPartitionedCall2:
CT2/StatefulPartitionedCallCT2/StatefulPartitionedCall2:
CT3/StatefulPartitionedCallCT3/StatefulPartitionedCall2:
CT4/StatefulPartitionedCallCT4/StatefulPartitionedCall2:
CT5/StatefulPartitionedCallCT5/StatefulPartitionedCall2>
inp_D/StatefulPartitionedCallinp_D/StatefulPartitionedCall:T P
'
_output_shapes
:?????????d
%
_user_specified_nameinp_D_input
?
d
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1462889

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+??????????????????????????? :i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?$
?
@__inference_CT3_layer_call_and_return_conditional_losses_1465502

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+???????????????????????????@?
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
@__inference_CT1_layer_call_and_return_conditional_losses_1463196

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? e
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:????????? z
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
'__inference_inp_D_layer_call_fn_1465260

inputs
unknown:	d?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_inp_D_layer_call_and_return_conditional_losses_1463151p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1463944
input_1$

c1_1463917: 

c1_1463919: $

c2_1463922: @

c2_1463924:@$

c3_1463927:@ 

c3_1463929: 

d1_1463933:	?@

d1_1463935:@

d2_1463938:@

d2_1463940:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinput_1
c1_1463917
c1_1463919*
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
?__inference_C1_layer_call_and_return_conditional_losses_1463617?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1463922
c2_1463924*
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
?__inference_C2_layer_call_and_return_conditional_losses_1463634?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1463927
c3_1463929*
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
?__inference_C3_layer_call_and_return_conditional_losses_1463651?
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
>__inference_F_layer_call_and_return_conditional_losses_1463663?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1463933
d1_1463935*
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
?__inference_D1_layer_call_and_return_conditional_losses_1463676?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1463938
d2_1463940*
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
?__inference_D2_layer_call_and_return_conditional_losses_1463693r
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
?
?
@__inference_CT4_layer_call_and_return_conditional_losses_1463283

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@|
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?$
?
@__inference_CT4_layer_call_and_return_conditional_losses_1465582

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+???????????????????????????@?
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
?__inference_C1_layer_call_and_return_conditional_losses_1463617

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

?
?__inference_D2_layer_call_and_return_conditional_losses_1465793

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
?
?
$__inference_D1_layer_call_fn_1465762

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
?__inference_D1_layer_call_and_return_conditional_losses_1463676o
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
?
?
$__inference_C3_layer_call_fn_1465731

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
?__inference_C3_layer_call_and_return_conditional_losses_1463651w
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
?__inference_C3_layer_call_and_return_conditional_losses_1465742

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
?
?
#__inference_F_layer_call_fn_1465747

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
>__inference_F_layer_call_and_return_conditional_losses_1463663a
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

?
B__inference_inp_D_layer_call_and_return_conditional_losses_1463151

inputs1
matmul_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1465113

inputs7
$inp_d_matmul_readvariableop_resource:	d?4
%inp_d_biasadd_readvariableop_resource:	?F
,ct1_conv2d_transpose_readvariableop_resource:  1
#ct1_biasadd_readvariableop_resource: F
,ct2_conv2d_transpose_readvariableop_resource:@ 1
#ct2_biasadd_readvariableop_resource:@F
,ct3_conv2d_transpose_readvariableop_resource:@@1
#ct3_biasadd_readvariableop_resource:@F
,ct4_conv2d_transpose_readvariableop_resource:@@1
#ct4_biasadd_readvariableop_resource:@F
,ct5_conv2d_transpose_readvariableop_resource:@1
#ct5_biasadd_readvariableop_resource:
identity??CT1/BiasAdd/ReadVariableOp?#CT1/conv2d_transpose/ReadVariableOp?CT2/BiasAdd/ReadVariableOp?#CT2/conv2d_transpose/ReadVariableOp?CT3/BiasAdd/ReadVariableOp?#CT3/conv2d_transpose/ReadVariableOp?CT4/BiasAdd/ReadVariableOp?#CT4/conv2d_transpose/ReadVariableOp?CT5/BiasAdd/ReadVariableOp?#CT5/conv2d_transpose/ReadVariableOp?inp_D/BiasAdd/ReadVariableOp?inp_D/MatMul/ReadVariableOp?
inp_D/MatMul/ReadVariableOpReadVariableOp$inp_d_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0v
inp_D/MatMulMatMulinputs#inp_D/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
inp_D/BiasAdd/ReadVariableOpReadVariableOp%inp_d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
inp_D/BiasAddBiasAddinp_D/MatMul:product:0$inp_D/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

inp_D/ReluReluinp_D/BiasAdd:output:0*
T0*(
_output_shapes
:??????????U
reshape/ShapeShapeinp_D/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape/ReshapeReshapeinp_D/Relu:activations:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? Q
	CT1/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:a
CT1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT1/strided_sliceStridedSliceCT1/Shape:output:0 CT1/strided_slice/stack:output:0"CT1/strided_slice/stack_1:output:0"CT1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT1/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
	CT1/stackPackCT1/strided_slice:output:0CT1/stack/1:output:0CT1/stack/2:output:0CT1/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT1/strided_slice_1StridedSliceCT1/stack:output:0"CT1/strided_slice_1/stack:output:0$CT1/strided_slice_1/stack_1:output:0$CT1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT1/conv2d_transpose/ReadVariableOpReadVariableOp,ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
CT1/conv2d_transposeConv2DBackpropInputCT1/stack:output:0+CT1/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
z
CT1/BiasAdd/ReadVariableOpReadVariableOp#ct1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
CT1/BiasAddBiasAddCT1/conv2d_transpose:output:0"CT1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? m
CT1/leaky_re_lu/LeakyRelu	LeakyReluCT1/BiasAdd:output:0*/
_output_shapes
:????????? `
	CT2/ShapeShape'CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT2/strided_sliceStridedSliceCT2/Shape:output:0 CT2/strided_slice/stack:output:0"CT2/strided_slice/stack_1:output:0"CT2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
M
CT2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :
M
CT2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
	CT2/stackPackCT2/strided_slice:output:0CT2/stack/1:output:0CT2/stack/2:output:0CT2/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT2/strided_slice_1StridedSliceCT2/stack:output:0"CT2/strided_slice_1/stack:output:0$CT2/strided_slice_1/stack_1:output:0$CT2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT2/conv2d_transpose/ReadVariableOpReadVariableOp,ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
CT2/conv2d_transposeConv2DBackpropInputCT2/stack:output:0+CT2/conv2d_transpose/ReadVariableOp:value:0'CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????

@*
paddingVALID*
strides
z
CT2/BiasAdd/ReadVariableOpReadVariableOp#ct2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
CT2/BiasAddBiasAddCT2/conv2d_transpose:output:0"CT2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

@o
CT2/leaky_re_lu_1/LeakyRelu	LeakyReluCT2/BiasAdd:output:0*/
_output_shapes
:?????????

@b
	CT3/ShapeShape)CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT3/strided_sliceStridedSliceCT3/Shape:output:0 CT3/strided_slice/stack:output:0"CT3/strided_slice/stack_1:output:0"CT3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
	CT3/stackPackCT3/strided_slice:output:0CT3/stack/1:output:0CT3/stack/2:output:0CT3/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT3/strided_slice_1StridedSliceCT3/stack:output:0"CT3/strided_slice_1/stack:output:0$CT3/strided_slice_1/stack_1:output:0$CT3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT3/conv2d_transpose/ReadVariableOpReadVariableOp,ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
CT3/conv2d_transposeConv2DBackpropInputCT3/stack:output:0+CT3/conv2d_transpose/ReadVariableOp:value:0)CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
z
CT3/BiasAdd/ReadVariableOpReadVariableOp#ct3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
CT3/BiasAddBiasAddCT3/conv2d_transpose:output:0"CT3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@o
CT3/leaky_re_lu_2/LeakyRelu	LeakyReluCT3/BiasAdd:output:0*/
_output_shapes
:?????????@b
	CT4/ShapeShape)CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT4/strided_sliceStridedSliceCT4/Shape:output:0 CT4/strided_slice/stack:output:0"CT4/strided_slice/stack_1:output:0"CT4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
	CT4/stackPackCT4/strided_slice:output:0CT4/stack/1:output:0CT4/stack/2:output:0CT4/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT4/strided_slice_1StridedSliceCT4/stack:output:0"CT4/strided_slice_1/stack:output:0$CT4/strided_slice_1/stack_1:output:0$CT4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT4/conv2d_transpose/ReadVariableOpReadVariableOp,ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
CT4/conv2d_transposeConv2DBackpropInputCT4/stack:output:0+CT4/conv2d_transpose/ReadVariableOp:value:0)CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
z
CT4/BiasAdd/ReadVariableOpReadVariableOp#ct4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
CT4/BiasAddBiasAddCT4/conv2d_transpose:output:0"CT4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@o
CT4/leaky_re_lu_3/LeakyRelu	LeakyReluCT4/BiasAdd:output:0*/
_output_shapes
:?????????@b
	CT5/ShapeShape)CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:a
CT5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
CT5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
CT5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT5/strided_sliceStridedSliceCT5/Shape:output:0 CT5/strided_slice/stack:output:0"CT5/strided_slice/stack_1:output:0"CT5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
CT5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :M
CT5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :M
CT5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
	CT5/stackPackCT5/strided_slice:output:0CT5/stack/1:output:0CT5/stack/2:output:0CT5/stack/3:output:0*
N*
T0*
_output_shapes
:c
CT5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
CT5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
CT5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
CT5/strided_slice_1StridedSliceCT5/stack:output:0"CT5/strided_slice_1/stack:output:0$CT5/strided_slice_1/stack_1:output:0$CT5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
#CT5/conv2d_transpose/ReadVariableOpReadVariableOp,ct5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
CT5/conv2d_transposeConv2DBackpropInputCT5/stack:output:0+CT5/conv2d_transpose/ReadVariableOp:value:0)CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
z
CT5/BiasAdd/ReadVariableOpReadVariableOp#ct5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
CT5/BiasAddBiasAddCT5/conv2d_transpose:output:0"CT5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????`
CT5/TanhTanhCT5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c
IdentityIdentityCT5/Tanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^CT1/BiasAdd/ReadVariableOp$^CT1/conv2d_transpose/ReadVariableOp^CT2/BiasAdd/ReadVariableOp$^CT2/conv2d_transpose/ReadVariableOp^CT3/BiasAdd/ReadVariableOp$^CT3/conv2d_transpose/ReadVariableOp^CT4/BiasAdd/ReadVariableOp$^CT4/conv2d_transpose/ReadVariableOp^CT5/BiasAdd/ReadVariableOp$^CT5/conv2d_transpose/ReadVariableOp^inp_D/BiasAdd/ReadVariableOp^inp_D/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 28
CT1/BiasAdd/ReadVariableOpCT1/BiasAdd/ReadVariableOp2J
#CT1/conv2d_transpose/ReadVariableOp#CT1/conv2d_transpose/ReadVariableOp28
CT2/BiasAdd/ReadVariableOpCT2/BiasAdd/ReadVariableOp2J
#CT2/conv2d_transpose/ReadVariableOp#CT2/conv2d_transpose/ReadVariableOp28
CT3/BiasAdd/ReadVariableOpCT3/BiasAdd/ReadVariableOp2J
#CT3/conv2d_transpose/ReadVariableOp#CT3/conv2d_transpose/ReadVariableOp28
CT4/BiasAdd/ReadVariableOpCT4/BiasAdd/ReadVariableOp2J
#CT4/conv2d_transpose/ReadVariableOp#CT4/conv2d_transpose/ReadVariableOp28
CT5/BiasAdd/ReadVariableOpCT5/BiasAdd/ReadVariableOp2J
#CT5/conv2d_transpose/ReadVariableOp#CT5/conv2d_transpose/ReadVariableOp2<
inp_D/BiasAdd/ReadVariableOpinp_D/BiasAdd/ReadVariableOp2:
inp_D/MatMul/ReadVariableOpinp_D/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
?__inference_C2_layer_call_and_return_conditional_losses_1463634

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
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1463914
input_1$

c1_1463887: 

c1_1463889: $

c2_1463892: @

c2_1463894:@$

c3_1463897:@ 

c3_1463899: 

d1_1463903:	?@

d1_1463905:@

d2_1463908:@

d2_1463910:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinput_1
c1_1463887
c1_1463889*
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
?__inference_C1_layer_call_and_return_conditional_losses_1463617?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1463892
c2_1463894*
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
?__inference_C2_layer_call_and_return_conditional_losses_1463634?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1463897
c3_1463899*
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
?__inference_C3_layer_call_and_return_conditional_losses_1463651?
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
>__inference_F_layer_call_and_return_conditional_losses_1463663?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1463903
d1_1463905*
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
?__inference_D1_layer_call_and_return_conditional_losses_1463676?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1463908
d2_1463910*
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
?__inference_D2_layer_call_and_return_conditional_losses_1463693r
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
`
D__inference_reshape_layer_call_and_return_conditional_losses_1463171

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:????????? `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_GAN_layer_call_fn_1464497

inputs
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13: @

unknown_14:@$

unknown_15:@ 

unknown_16: 

unknown_17:	?@

unknown_18:@

unknown_19:@

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_GAN_layer_call_and_return_conditional_losses_1464146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1462848
input_2F
3gan_sequential_inp_d_matmul_readvariableop_resource:	d?C
4gan_sequential_inp_d_biasadd_readvariableop_resource:	?U
;gan_sequential_ct1_conv2d_transpose_readvariableop_resource:  @
2gan_sequential_ct1_biasadd_readvariableop_resource: U
;gan_sequential_ct2_conv2d_transpose_readvariableop_resource:@ @
2gan_sequential_ct2_biasadd_readvariableop_resource:@U
;gan_sequential_ct3_conv2d_transpose_readvariableop_resource:@@@
2gan_sequential_ct3_biasadd_readvariableop_resource:@U
;gan_sequential_ct4_conv2d_transpose_readvariableop_resource:@@@
2gan_sequential_ct4_biasadd_readvariableop_resource:@U
;gan_sequential_ct5_conv2d_transpose_readvariableop_resource:@@
2gan_sequential_ct5_biasadd_readvariableop_resource:D
*gan_disc_c1_conv2d_readvariableop_resource: 9
+gan_disc_c1_biasadd_readvariableop_resource: D
*gan_disc_c2_conv2d_readvariableop_resource: @9
+gan_disc_c2_biasadd_readvariableop_resource:@D
*gan_disc_c3_conv2d_readvariableop_resource:@ 9
+gan_disc_c3_biasadd_readvariableop_resource: =
*gan_disc_d1_matmul_readvariableop_resource:	?@9
+gan_disc_d1_biasadd_readvariableop_resource:@<
*gan_disc_d2_matmul_readvariableop_resource:@9
+gan_disc_d2_biasadd_readvariableop_resource:
identity??"GAN/disc/C1/BiasAdd/ReadVariableOp?!GAN/disc/C1/Conv2D/ReadVariableOp?"GAN/disc/C2/BiasAdd/ReadVariableOp?!GAN/disc/C2/Conv2D/ReadVariableOp?"GAN/disc/C3/BiasAdd/ReadVariableOp?!GAN/disc/C3/Conv2D/ReadVariableOp?"GAN/disc/D1/BiasAdd/ReadVariableOp?!GAN/disc/D1/MatMul/ReadVariableOp?"GAN/disc/D2/BiasAdd/ReadVariableOp?!GAN/disc/D2/MatMul/ReadVariableOp?)GAN/sequential/CT1/BiasAdd/ReadVariableOp?2GAN/sequential/CT1/conv2d_transpose/ReadVariableOp?)GAN/sequential/CT2/BiasAdd/ReadVariableOp?2GAN/sequential/CT2/conv2d_transpose/ReadVariableOp?)GAN/sequential/CT3/BiasAdd/ReadVariableOp?2GAN/sequential/CT3/conv2d_transpose/ReadVariableOp?)GAN/sequential/CT4/BiasAdd/ReadVariableOp?2GAN/sequential/CT4/conv2d_transpose/ReadVariableOp?)GAN/sequential/CT5/BiasAdd/ReadVariableOp?2GAN/sequential/CT5/conv2d_transpose/ReadVariableOp?+GAN/sequential/inp_D/BiasAdd/ReadVariableOp?*GAN/sequential/inp_D/MatMul/ReadVariableOp?
*GAN/sequential/inp_D/MatMul/ReadVariableOpReadVariableOp3gan_sequential_inp_d_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
GAN/sequential/inp_D/MatMulMatMulinput_22GAN/sequential/inp_D/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+GAN/sequential/inp_D/BiasAdd/ReadVariableOpReadVariableOp4gan_sequential_inp_d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
GAN/sequential/inp_D/BiasAddBiasAdd%GAN/sequential/inp_D/MatMul:product:03GAN/sequential/inp_D/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
GAN/sequential/inp_D/ReluRelu%GAN/sequential/inp_D/BiasAdd:output:0*
T0*(
_output_shapes
:??????????s
GAN/sequential/reshape/ShapeShape'GAN/sequential/inp_D/Relu:activations:0*
T0*
_output_shapes
:t
*GAN/sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,GAN/sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,GAN/sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$GAN/sequential/reshape/strided_sliceStridedSlice%GAN/sequential/reshape/Shape:output:03GAN/sequential/reshape/strided_slice/stack:output:05GAN/sequential/reshape/strided_slice/stack_1:output:05GAN/sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&GAN/sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&GAN/sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&GAN/sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
$GAN/sequential/reshape/Reshape/shapePack-GAN/sequential/reshape/strided_slice:output:0/GAN/sequential/reshape/Reshape/shape/1:output:0/GAN/sequential/reshape/Reshape/shape/2:output:0/GAN/sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
GAN/sequential/reshape/ReshapeReshape'GAN/sequential/inp_D/Relu:activations:0-GAN/sequential/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? o
GAN/sequential/CT1/ShapeShape'GAN/sequential/reshape/Reshape:output:0*
T0*
_output_shapes
:p
&GAN/sequential/CT1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(GAN/sequential/CT1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(GAN/sequential/CT1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 GAN/sequential/CT1/strided_sliceStridedSlice!GAN/sequential/CT1/Shape:output:0/GAN/sequential/CT1/strided_slice/stack:output:01GAN/sequential/CT1/strided_slice/stack_1:output:01GAN/sequential/CT1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
GAN/sequential/CT1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT1/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
GAN/sequential/CT1/stackPack)GAN/sequential/CT1/strided_slice:output:0#GAN/sequential/CT1/stack/1:output:0#GAN/sequential/CT1/stack/2:output:0#GAN/sequential/CT1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(GAN/sequential/CT1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*GAN/sequential/CT1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*GAN/sequential/CT1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"GAN/sequential/CT1/strided_slice_1StridedSlice!GAN/sequential/CT1/stack:output:01GAN/sequential/CT1/strided_slice_1/stack:output:03GAN/sequential/CT1/strided_slice_1/stack_1:output:03GAN/sequential/CT1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2GAN/sequential/CT1/conv2d_transpose/ReadVariableOpReadVariableOp;gan_sequential_ct1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
#GAN/sequential/CT1/conv2d_transposeConv2DBackpropInput!GAN/sequential/CT1/stack:output:0:GAN/sequential/CT1/conv2d_transpose/ReadVariableOp:value:0'GAN/sequential/reshape/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
)GAN/sequential/CT1/BiasAdd/ReadVariableOpReadVariableOp2gan_sequential_ct1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
GAN/sequential/CT1/BiasAddBiasAdd,GAN/sequential/CT1/conv2d_transpose:output:01GAN/sequential/CT1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
(GAN/sequential/CT1/leaky_re_lu/LeakyRelu	LeakyRelu#GAN/sequential/CT1/BiasAdd:output:0*/
_output_shapes
:????????? ~
GAN/sequential/CT2/ShapeShape6GAN/sequential/CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&GAN/sequential/CT2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(GAN/sequential/CT2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(GAN/sequential/CT2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 GAN/sequential/CT2/strided_sliceStridedSlice!GAN/sequential/CT2/Shape:output:0/GAN/sequential/CT2/strided_slice/stack:output:01GAN/sequential/CT2/strided_slice/stack_1:output:01GAN/sequential/CT2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
GAN/sequential/CT2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
\
GAN/sequential/CT2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :
\
GAN/sequential/CT2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
GAN/sequential/CT2/stackPack)GAN/sequential/CT2/strided_slice:output:0#GAN/sequential/CT2/stack/1:output:0#GAN/sequential/CT2/stack/2:output:0#GAN/sequential/CT2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(GAN/sequential/CT2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*GAN/sequential/CT2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*GAN/sequential/CT2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"GAN/sequential/CT2/strided_slice_1StridedSlice!GAN/sequential/CT2/stack:output:01GAN/sequential/CT2/strided_slice_1/stack:output:03GAN/sequential/CT2/strided_slice_1/stack_1:output:03GAN/sequential/CT2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2GAN/sequential/CT2/conv2d_transpose/ReadVariableOpReadVariableOp;gan_sequential_ct2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
#GAN/sequential/CT2/conv2d_transposeConv2DBackpropInput!GAN/sequential/CT2/stack:output:0:GAN/sequential/CT2/conv2d_transpose/ReadVariableOp:value:06GAN/sequential/CT1/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????

@*
paddingVALID*
strides
?
)GAN/sequential/CT2/BiasAdd/ReadVariableOpReadVariableOp2gan_sequential_ct2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
GAN/sequential/CT2/BiasAddBiasAdd,GAN/sequential/CT2/conv2d_transpose:output:01GAN/sequential/CT2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

@?
*GAN/sequential/CT2/leaky_re_lu_1/LeakyRelu	LeakyRelu#GAN/sequential/CT2/BiasAdd:output:0*/
_output_shapes
:?????????

@?
GAN/sequential/CT3/ShapeShape8GAN/sequential/CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&GAN/sequential/CT3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(GAN/sequential/CT3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(GAN/sequential/CT3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 GAN/sequential/CT3/strided_sliceStridedSlice!GAN/sequential/CT3/Shape:output:0/GAN/sequential/CT3/strided_slice/stack:output:01GAN/sequential/CT3/strided_slice/stack_1:output:01GAN/sequential/CT3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
GAN/sequential/CT3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
GAN/sequential/CT3/stackPack)GAN/sequential/CT3/strided_slice:output:0#GAN/sequential/CT3/stack/1:output:0#GAN/sequential/CT3/stack/2:output:0#GAN/sequential/CT3/stack/3:output:0*
N*
T0*
_output_shapes
:r
(GAN/sequential/CT3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*GAN/sequential/CT3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*GAN/sequential/CT3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"GAN/sequential/CT3/strided_slice_1StridedSlice!GAN/sequential/CT3/stack:output:01GAN/sequential/CT3/strided_slice_1/stack:output:03GAN/sequential/CT3/strided_slice_1/stack_1:output:03GAN/sequential/CT3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2GAN/sequential/CT3/conv2d_transpose/ReadVariableOpReadVariableOp;gan_sequential_ct3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
#GAN/sequential/CT3/conv2d_transposeConv2DBackpropInput!GAN/sequential/CT3/stack:output:0:GAN/sequential/CT3/conv2d_transpose/ReadVariableOp:value:08GAN/sequential/CT2/leaky_re_lu_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
)GAN/sequential/CT3/BiasAdd/ReadVariableOpReadVariableOp2gan_sequential_ct3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
GAN/sequential/CT3/BiasAddBiasAdd,GAN/sequential/CT3/conv2d_transpose:output:01GAN/sequential/CT3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
*GAN/sequential/CT3/leaky_re_lu_2/LeakyRelu	LeakyRelu#GAN/sequential/CT3/BiasAdd:output:0*/
_output_shapes
:?????????@?
GAN/sequential/CT4/ShapeShape8GAN/sequential/CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&GAN/sequential/CT4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(GAN/sequential/CT4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(GAN/sequential/CT4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 GAN/sequential/CT4/strided_sliceStridedSlice!GAN/sequential/CT4/Shape:output:0/GAN/sequential/CT4/strided_slice/stack:output:01GAN/sequential/CT4/strided_slice/stack_1:output:01GAN/sequential/CT4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
GAN/sequential/CT4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
GAN/sequential/CT4/stackPack)GAN/sequential/CT4/strided_slice:output:0#GAN/sequential/CT4/stack/1:output:0#GAN/sequential/CT4/stack/2:output:0#GAN/sequential/CT4/stack/3:output:0*
N*
T0*
_output_shapes
:r
(GAN/sequential/CT4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*GAN/sequential/CT4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*GAN/sequential/CT4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"GAN/sequential/CT4/strided_slice_1StridedSlice!GAN/sequential/CT4/stack:output:01GAN/sequential/CT4/strided_slice_1/stack:output:03GAN/sequential/CT4/strided_slice_1/stack_1:output:03GAN/sequential/CT4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2GAN/sequential/CT4/conv2d_transpose/ReadVariableOpReadVariableOp;gan_sequential_ct4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
#GAN/sequential/CT4/conv2d_transposeConv2DBackpropInput!GAN/sequential/CT4/stack:output:0:GAN/sequential/CT4/conv2d_transpose/ReadVariableOp:value:08GAN/sequential/CT3/leaky_re_lu_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
)GAN/sequential/CT4/BiasAdd/ReadVariableOpReadVariableOp2gan_sequential_ct4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
GAN/sequential/CT4/BiasAddBiasAdd,GAN/sequential/CT4/conv2d_transpose:output:01GAN/sequential/CT4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
*GAN/sequential/CT4/leaky_re_lu_3/LeakyRelu	LeakyRelu#GAN/sequential/CT4/BiasAdd:output:0*/
_output_shapes
:?????????@?
GAN/sequential/CT5/ShapeShape8GAN/sequential/CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&GAN/sequential/CT5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(GAN/sequential/CT5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(GAN/sequential/CT5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 GAN/sequential/CT5/strided_sliceStridedSlice!GAN/sequential/CT5/Shape:output:0/GAN/sequential/CT5/strided_slice/stack:output:01GAN/sequential/CT5/strided_slice/stack_1:output:01GAN/sequential/CT5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
GAN/sequential/CT5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT5/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
GAN/sequential/CT5/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
GAN/sequential/CT5/stackPack)GAN/sequential/CT5/strided_slice:output:0#GAN/sequential/CT5/stack/1:output:0#GAN/sequential/CT5/stack/2:output:0#GAN/sequential/CT5/stack/3:output:0*
N*
T0*
_output_shapes
:r
(GAN/sequential/CT5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*GAN/sequential/CT5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*GAN/sequential/CT5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"GAN/sequential/CT5/strided_slice_1StridedSlice!GAN/sequential/CT5/stack:output:01GAN/sequential/CT5/strided_slice_1/stack:output:03GAN/sequential/CT5/strided_slice_1/stack_1:output:03GAN/sequential/CT5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2GAN/sequential/CT5/conv2d_transpose/ReadVariableOpReadVariableOp;gan_sequential_ct5_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
#GAN/sequential/CT5/conv2d_transposeConv2DBackpropInput!GAN/sequential/CT5/stack:output:0:GAN/sequential/CT5/conv2d_transpose/ReadVariableOp:value:08GAN/sequential/CT4/leaky_re_lu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
)GAN/sequential/CT5/BiasAdd/ReadVariableOpReadVariableOp2gan_sequential_ct5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
GAN/sequential/CT5/BiasAddBiasAdd,GAN/sequential/CT5/conv2d_transpose:output:01GAN/sequential/CT5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~
GAN/sequential/CT5/TanhTanh#GAN/sequential/CT5/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
!GAN/disc/C1/Conv2D/ReadVariableOpReadVariableOp*gan_disc_c1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
GAN/disc/C1/Conv2DConv2DGAN/sequential/CT5/Tanh:y:0)GAN/disc/C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
"GAN/disc/C1/BiasAdd/ReadVariableOpReadVariableOp+gan_disc_c1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
GAN/disc/C1/BiasAddBiasAddGAN/disc/C1/Conv2D:output:0*GAN/disc/C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 
#GAN/disc/C1/leaky_re_lu_4/LeakyRelu	LeakyReluGAN/disc/C1/BiasAdd:output:0*/
_output_shapes
:????????? ?
!GAN/disc/C2/Conv2D/ReadVariableOpReadVariableOp*gan_disc_c2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
GAN/disc/C2/Conv2DConv2D1GAN/disc/C1/leaky_re_lu_4/LeakyRelu:activations:0)GAN/disc/C2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
"GAN/disc/C2/BiasAdd/ReadVariableOpReadVariableOp+gan_disc_c2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
GAN/disc/C2/BiasAddBiasAddGAN/disc/C2/Conv2D:output:0*GAN/disc/C2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
#GAN/disc/C2/leaky_re_lu_5/LeakyRelu	LeakyReluGAN/disc/C2/BiasAdd:output:0*/
_output_shapes
:?????????@?
!GAN/disc/C3/Conv2D/ReadVariableOpReadVariableOp*gan_disc_c3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
GAN/disc/C3/Conv2DConv2D1GAN/disc/C2/leaky_re_lu_5/LeakyRelu:activations:0)GAN/disc/C3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
"GAN/disc/C3/BiasAdd/ReadVariableOpReadVariableOp+gan_disc_c3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
GAN/disc/C3/BiasAddBiasAddGAN/disc/C3/Conv2D:output:0*GAN/disc/C3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 
#GAN/disc/C3/leaky_re_lu_6/LeakyRelu	LeakyReluGAN/disc/C3/BiasAdd:output:0*/
_output_shapes
:????????? a
GAN/disc/F/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
GAN/disc/F/ReshapeReshape1GAN/disc/C3/leaky_re_lu_6/LeakyRelu:activations:0GAN/disc/F/Const:output:0*
T0*(
_output_shapes
:???????????
!GAN/disc/D1/MatMul/ReadVariableOpReadVariableOp*gan_disc_d1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
GAN/disc/D1/MatMulMatMulGAN/disc/F/Reshape:output:0)GAN/disc/D1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
"GAN/disc/D1/BiasAdd/ReadVariableOpReadVariableOp+gan_disc_d1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
GAN/disc/D1/BiasAddBiasAddGAN/disc/D1/MatMul:product:0*GAN/disc/D1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@w
#GAN/disc/D1/leaky_re_lu_7/LeakyRelu	LeakyReluGAN/disc/D1/BiasAdd:output:0*'
_output_shapes
:?????????@?
!GAN/disc/D2/MatMul/ReadVariableOpReadVariableOp*gan_disc_d2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
GAN/disc/D2/MatMulMatMul1GAN/disc/D1/leaky_re_lu_7/LeakyRelu:activations:0)GAN/disc/D2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"GAN/disc/D2/BiasAdd/ReadVariableOpReadVariableOp+gan_disc_d2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
GAN/disc/D2/BiasAddBiasAddGAN/disc/D2/MatMul:product:0*GAN/disc/D2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
GAN/disc/D2/SigmoidSigmoidGAN/disc/D2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityGAN/disc/D2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^GAN/disc/C1/BiasAdd/ReadVariableOp"^GAN/disc/C1/Conv2D/ReadVariableOp#^GAN/disc/C2/BiasAdd/ReadVariableOp"^GAN/disc/C2/Conv2D/ReadVariableOp#^GAN/disc/C3/BiasAdd/ReadVariableOp"^GAN/disc/C3/Conv2D/ReadVariableOp#^GAN/disc/D1/BiasAdd/ReadVariableOp"^GAN/disc/D1/MatMul/ReadVariableOp#^GAN/disc/D2/BiasAdd/ReadVariableOp"^GAN/disc/D2/MatMul/ReadVariableOp*^GAN/sequential/CT1/BiasAdd/ReadVariableOp3^GAN/sequential/CT1/conv2d_transpose/ReadVariableOp*^GAN/sequential/CT2/BiasAdd/ReadVariableOp3^GAN/sequential/CT2/conv2d_transpose/ReadVariableOp*^GAN/sequential/CT3/BiasAdd/ReadVariableOp3^GAN/sequential/CT3/conv2d_transpose/ReadVariableOp*^GAN/sequential/CT4/BiasAdd/ReadVariableOp3^GAN/sequential/CT4/conv2d_transpose/ReadVariableOp*^GAN/sequential/CT5/BiasAdd/ReadVariableOp3^GAN/sequential/CT5/conv2d_transpose/ReadVariableOp,^GAN/sequential/inp_D/BiasAdd/ReadVariableOp+^GAN/sequential/inp_D/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 2H
"GAN/disc/C1/BiasAdd/ReadVariableOp"GAN/disc/C1/BiasAdd/ReadVariableOp2F
!GAN/disc/C1/Conv2D/ReadVariableOp!GAN/disc/C1/Conv2D/ReadVariableOp2H
"GAN/disc/C2/BiasAdd/ReadVariableOp"GAN/disc/C2/BiasAdd/ReadVariableOp2F
!GAN/disc/C2/Conv2D/ReadVariableOp!GAN/disc/C2/Conv2D/ReadVariableOp2H
"GAN/disc/C3/BiasAdd/ReadVariableOp"GAN/disc/C3/BiasAdd/ReadVariableOp2F
!GAN/disc/C3/Conv2D/ReadVariableOp!GAN/disc/C3/Conv2D/ReadVariableOp2H
"GAN/disc/D1/BiasAdd/ReadVariableOp"GAN/disc/D1/BiasAdd/ReadVariableOp2F
!GAN/disc/D1/MatMul/ReadVariableOp!GAN/disc/D1/MatMul/ReadVariableOp2H
"GAN/disc/D2/BiasAdd/ReadVariableOp"GAN/disc/D2/BiasAdd/ReadVariableOp2F
!GAN/disc/D2/MatMul/ReadVariableOp!GAN/disc/D2/MatMul/ReadVariableOp2V
)GAN/sequential/CT1/BiasAdd/ReadVariableOp)GAN/sequential/CT1/BiasAdd/ReadVariableOp2h
2GAN/sequential/CT1/conv2d_transpose/ReadVariableOp2GAN/sequential/CT1/conv2d_transpose/ReadVariableOp2V
)GAN/sequential/CT2/BiasAdd/ReadVariableOp)GAN/sequential/CT2/BiasAdd/ReadVariableOp2h
2GAN/sequential/CT2/conv2d_transpose/ReadVariableOp2GAN/sequential/CT2/conv2d_transpose/ReadVariableOp2V
)GAN/sequential/CT3/BiasAdd/ReadVariableOp)GAN/sequential/CT3/BiasAdd/ReadVariableOp2h
2GAN/sequential/CT3/conv2d_transpose/ReadVariableOp2GAN/sequential/CT3/conv2d_transpose/ReadVariableOp2V
)GAN/sequential/CT4/BiasAdd/ReadVariableOp)GAN/sequential/CT4/BiasAdd/ReadVariableOp2h
2GAN/sequential/CT4/conv2d_transpose/ReadVariableOp2GAN/sequential/CT4/conv2d_transpose/ReadVariableOp2V
)GAN/sequential/CT5/BiasAdd/ReadVariableOp)GAN/sequential/CT5/BiasAdd/ReadVariableOp2h
2GAN/sequential/CT5/conv2d_transpose/ReadVariableOp2GAN/sequential/CT5/conv2d_transpose/ReadVariableOp2Z
+GAN/sequential/inp_D/BiasAdd/ReadVariableOp+GAN/sequential/inp_D/BiasAdd/ReadVariableOp2X
*GAN/sequential/inp_D/MatMul/ReadVariableOp*GAN/sequential/inp_D/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_2
?
?
@__inference_GAN_layer_call_and_return_conditional_losses_1464146

inputs%
sequential_1464099:	d?!
sequential_1464101:	?,
sequential_1464103:   
sequential_1464105: ,
sequential_1464107:@  
sequential_1464109:@,
sequential_1464111:@@ 
sequential_1464113:@,
sequential_1464115:@@ 
sequential_1464117:@,
sequential_1464119:@ 
sequential_1464121:&
disc_1464124: 
disc_1464126: &
disc_1464128: @
disc_1464130:@&
disc_1464132:@ 
disc_1464134: 
disc_1464136:	?@
disc_1464138:@
disc_1464140:@
disc_1464142:
identity??disc/StatefulPartitionedCall?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1464099sequential_1464101sequential_1464103sequential_1464105sequential_1464107sequential_1464109sequential_1464111sequential_1464113sequential_1464115sequential_1464117sequential_1464119sequential_1464121*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463473?
disc/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0disc_1464124disc_1464126disc_1464128disc_1464130disc_1464132disc_1464134disc_1464136disc_1464138disc_1464140disc_1464142*
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
A__inference_disc_layer_call_and_return_conditional_losses_1463836t
IdentityIdentity%disc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^disc/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 2<
disc/StatefulPartitionedCalldisc/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
,__inference_sequential_layer_call_fn_1463346
inp_d_input
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinp_d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463319w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????d
%
_user_specified_nameinp_D_input
?

?
B__inference_inp_D_layer_call_and_return_conditional_losses_1465271

inputs1
matmul_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
A__inference_disc_layer_call_and_return_conditional_losses_1463700

inputs$

c1_1463618: 

c1_1463620: $

c2_1463635: @

c2_1463637:@$

c3_1463652:@ 

c3_1463654: 

d1_1463677:	?@

d1_1463679:@

d2_1463694:@

d2_1463696:
identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?C3/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinputs
c1_1463618
c1_1463620*
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
?__inference_C1_layer_call_and_return_conditional_losses_1463617?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0
c2_1463635
c2_1463637*
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
?__inference_C2_layer_call_and_return_conditional_losses_1463634?
C3/StatefulPartitionedCallStatefulPartitionedCall#C2/StatefulPartitionedCall:output:0
c3_1463652
c3_1463654*
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
?__inference_C3_layer_call_and_return_conditional_losses_1463651?
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
>__inference_F_layer_call_and_return_conditional_losses_1463663?
D1/StatefulPartitionedCallStatefulPartitionedCallF/PartitionedCall:output:0
d1_1463677
d1_1463679*
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
?__inference_D1_layer_call_and_return_conditional_losses_1463676?
D2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0
d2_1463694
d2_1463696*
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
?__inference_D2_layer_call_and_return_conditional_losses_1463693r
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
?
?
@__inference_CT5_layer_call_and_return_conditional_losses_1463312

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:?????????_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
&__inference_disc_layer_call_fn_1465169

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
A__inference_disc_layer_call_and_return_conditional_losses_1463836o
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
?%
?
@__inference_CT3_layer_call_and_return_conditional_losses_1463014

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@?
leaky_re_lu_2/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1463011?
IdentityIdentity&leaky_re_lu_2/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?!
?
@__inference_CT1_layer_call_and_return_conditional_losses_1465342

inputsB
(conv2d_transpose_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? w
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*A
_output_shapes/
-:+??????????????????????????? ?
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
@__inference_CT4_layer_call_and_return_conditional_losses_1465606

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@|
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?,
?
A__inference_disc_layer_call_and_return_conditional_losses_1465210

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
?%
?
@__inference_CT2_layer_call_and_return_conditional_losses_1462953

inputsB
(conv2d_transpose_readvariableop_resource:@ -
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@?
leaky_re_lu_1/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1462950?
IdentityIdentity&leaky_re_lu_1/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1462950

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
?__inference_D2_layer_call_and_return_conditional_losses_1463693

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
?
?
@__inference_CT3_layer_call_and_return_conditional_losses_1465526

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@g
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@|
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????

@
 
_user_specified_nameinputs
?!
?
@__inference_CT5_layer_call_and_return_conditional_losses_1465658

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
@__inference_GAN_layer_call_and_return_conditional_losses_1463998

inputs%
sequential_1463951:	d?!
sequential_1463953:	?,
sequential_1463955:   
sequential_1463957: ,
sequential_1463959:@  
sequential_1463961:@,
sequential_1463963:@@ 
sequential_1463965:@,
sequential_1463967:@@ 
sequential_1463969:@,
sequential_1463971:@ 
sequential_1463973:&
disc_1463976: 
disc_1463978: &
disc_1463980: @
disc_1463982:@&
disc_1463984:@ 
disc_1463986: 
disc_1463988:	?@
disc_1463990:@
disc_1463992:@
disc_1463994:
identity??disc/StatefulPartitionedCall?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1463951sequential_1463953sequential_1463955sequential_1463957sequential_1463959sequential_1463961sequential_1463963sequential_1463965sequential_1463967sequential_1463969sequential_1463971sequential_1463973*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463319?
disc/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0disc_1463976disc_1463978disc_1463980disc_1463982disc_1463984disc_1463986disc_1463988disc_1463990disc_1463992disc_1463994*
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
A__inference_disc_layer_call_and_return_conditional_losses_1463700t
IdentityIdentity%disc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^disc/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 2<
disc/StatefulPartitionedCalldisc/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
@__inference_GAN_layer_call_and_return_conditional_losses_1464292
input_2%
sequential_1464245:	d?!
sequential_1464247:	?,
sequential_1464249:   
sequential_1464251: ,
sequential_1464253:@  
sequential_1464255:@,
sequential_1464257:@@ 
sequential_1464259:@,
sequential_1464261:@@ 
sequential_1464263:@,
sequential_1464265:@ 
sequential_1464267:&
disc_1464270: 
disc_1464272: &
disc_1464274: @
disc_1464276:@&
disc_1464278:@ 
disc_1464280: 
disc_1464282:	?@
disc_1464284:@
disc_1464286:@
disc_1464288:
identity??disc/StatefulPartitionedCall?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1464245sequential_1464247sequential_1464249sequential_1464251sequential_1464253sequential_1464255sequential_1464257sequential_1464259sequential_1464261sequential_1464263sequential_1464265sequential_1464267*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_1463319?
disc/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0disc_1464270disc_1464272disc_1464274disc_1464276disc_1464278disc_1464280disc_1464282disc_1464284disc_1464286disc_1464288*
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
A__inference_disc_layer_call_and_return_conditional_losses_1463700t
IdentityIdentity%disc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^disc/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 2<
disc/StatefulPartitionedCalldisc/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_2
?
Z
>__inference_F_layer_call_and_return_conditional_losses_1465753

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
`
D__inference_reshape_layer_call_and_return_conditional_losses_1465290

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : ?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:????????? `
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
A__inference_disc_layer_call_and_return_conditional_losses_1465251

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
?
K
/__inference_leaky_re_lu_1_layer_call_fn_1465808

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1462950z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
$__inference_C2_layer_call_fn_1465711

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
?__inference_C2_layer_call_and_return_conditional_losses_1463634w
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
?
?
%__inference_GAN_layer_call_fn_1464045
input_2
unknown:	d?
	unknown_0:	?#
	unknown_1:  
	unknown_2: #
	unknown_3:@ 
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13: @

unknown_14:@$

unknown_15:@ 

unknown_16: 

unknown_17:	?@

unknown_18:@

unknown_19:@

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_GAN_layer_call_and_return_conditional_losses_1463998o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_2
?%
?
@__inference_CT4_layer_call_and_return_conditional_losses_1463075

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@?
leaky_re_lu_3/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1463072?
IdentityIdentity&leaky_re_lu_3/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?/
#__inference__traced_restore_1466358
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: 2
assignvariableop_5_inp_d_kernel:	d?,
assignvariableop_6_inp_d_bias:	?7
assignvariableop_7_ct1_kernel:  )
assignvariableop_8_ct1_bias: 7
assignvariableop_9_ct2_kernel:@ *
assignvariableop_10_ct2_bias:@8
assignvariableop_11_ct3_kernel:@@*
assignvariableop_12_ct3_bias:@8
assignvariableop_13_ct4_kernel:@@*
assignvariableop_14_ct4_bias:@8
assignvariableop_15_ct5_kernel:@*
assignvariableop_16_ct5_bias:7
assignvariableop_17_c1_kernel: )
assignvariableop_18_c1_bias: 7
assignvariableop_19_c2_kernel: @)
assignvariableop_20_c2_bias:@7
assignvariableop_21_c3_kernel:@ )
assignvariableop_22_c3_bias: 0
assignvariableop_23_d1_kernel:	?@)
assignvariableop_24_d1_bias:@/
assignvariableop_25_d2_kernel:@)
assignvariableop_26_d2_bias:)
assignvariableop_27_adam_iter_1:	 +
!assignvariableop_28_adam_beta_1_1: +
!assignvariableop_29_adam_beta_2_1: *
 assignvariableop_30_adam_decay_1: 2
(assignvariableop_31_adam_learning_rate_1: #
assignvariableop_32_total: #
assignvariableop_33_count: %
assignvariableop_34_total_1: %
assignvariableop_35_count_1: %
assignvariableop_36_total_2: %
assignvariableop_37_count_2: :
'assignvariableop_38_adam_inp_d_kernel_m:	d?4
%assignvariableop_39_adam_inp_d_bias_m:	??
%assignvariableop_40_adam_ct1_kernel_m:  1
#assignvariableop_41_adam_ct1_bias_m: ?
%assignvariableop_42_adam_ct2_kernel_m:@ 1
#assignvariableop_43_adam_ct2_bias_m:@?
%assignvariableop_44_adam_ct3_kernel_m:@@1
#assignvariableop_45_adam_ct3_bias_m:@?
%assignvariableop_46_adam_ct4_kernel_m:@@1
#assignvariableop_47_adam_ct4_bias_m:@?
%assignvariableop_48_adam_ct5_kernel_m:@1
#assignvariableop_49_adam_ct5_bias_m::
'assignvariableop_50_adam_inp_d_kernel_v:	d?4
%assignvariableop_51_adam_inp_d_bias_v:	??
%assignvariableop_52_adam_ct1_kernel_v:  1
#assignvariableop_53_adam_ct1_bias_v: ?
%assignvariableop_54_adam_ct2_kernel_v:@ 1
#assignvariableop_55_adam_ct2_bias_v:@?
%assignvariableop_56_adam_ct3_kernel_v:@@1
#assignvariableop_57_adam_ct3_bias_v:@?
%assignvariableop_58_adam_ct4_kernel_v:@@1
#assignvariableop_59_adam_ct4_bias_v:@?
%assignvariableop_60_adam_ct5_kernel_v:@1
#assignvariableop_61_adam_ct5_bias_v:>
$assignvariableop_62_adam_c1_kernel_m: 0
"assignvariableop_63_adam_c1_bias_m: >
$assignvariableop_64_adam_c2_kernel_m: @0
"assignvariableop_65_adam_c2_bias_m:@>
$assignvariableop_66_adam_c3_kernel_m:@ 0
"assignvariableop_67_adam_c3_bias_m: 7
$assignvariableop_68_adam_d1_kernel_m:	?@0
"assignvariableop_69_adam_d1_bias_m:@6
$assignvariableop_70_adam_d2_kernel_m:@0
"assignvariableop_71_adam_d2_bias_m:>
$assignvariableop_72_adam_c1_kernel_v: 0
"assignvariableop_73_adam_c1_bias_v: >
$assignvariableop_74_adam_c2_kernel_v: @0
"assignvariableop_75_adam_c2_bias_v:@>
$assignvariableop_76_adam_c3_kernel_v:@ 0
"assignvariableop_77_adam_c3_bias_v: 7
$assignvariableop_78_adam_d1_kernel_v:	?@0
"assignvariableop_79_adam_d1_bias_v:@6
$assignvariableop_80_adam_d2_kernel_v:@0
"assignvariableop_81_adam_d2_bias_v:
identity_83??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_9?*
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?)
value?)B?)SB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*?
value?B?SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*a
dtypesW
U2S		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_inp_d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_inp_d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_ct1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_ct1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_ct2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_ct2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_ct3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_ct3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_ct4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_ct4_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_ct5_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_ct5_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_c1_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_c1_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_c2_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_c2_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_c3_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_c3_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_d1_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_d1_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_d2_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_d2_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_iter_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp!assignvariableop_28_adam_beta_1_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp!assignvariableop_29_adam_beta_2_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp assignvariableop_30_adam_decay_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_learning_rate_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpassignvariableop_34_total_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpassignvariableop_35_count_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpassignvariableop_36_total_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpassignvariableop_37_count_2Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_inp_d_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp%assignvariableop_39_adam_inp_d_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_ct1_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp#assignvariableop_41_adam_ct1_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp%assignvariableop_42_adam_ct2_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp#assignvariableop_43_adam_ct2_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_ct3_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp#assignvariableop_45_adam_ct3_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_ct4_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp#assignvariableop_47_adam_ct4_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp%assignvariableop_48_adam_ct5_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp#assignvariableop_49_adam_ct5_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_inp_d_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp%assignvariableop_51_adam_inp_d_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_ct1_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp#assignvariableop_53_adam_ct1_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp%assignvariableop_54_adam_ct2_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp#assignvariableop_55_adam_ct2_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_ct3_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp#assignvariableop_57_adam_ct3_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_ct4_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp#assignvariableop_59_adam_ct4_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp%assignvariableop_60_adam_ct5_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp#assignvariableop_61_adam_ct5_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp$assignvariableop_62_adam_c1_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp"assignvariableop_63_adam_c1_bias_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp$assignvariableop_64_adam_c2_kernel_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp"assignvariableop_65_adam_c2_bias_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp$assignvariableop_66_adam_c3_kernel_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp"assignvariableop_67_adam_c3_bias_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp$assignvariableop_68_adam_d1_kernel_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp"assignvariableop_69_adam_d1_bias_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOp$assignvariableop_70_adam_d2_kernel_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp"assignvariableop_71_adam_d2_bias_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp$assignvariableop_72_adam_c1_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp"assignvariableop_73_adam_c1_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp$assignvariableop_74_adam_c2_kernel_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp"assignvariableop_75_adam_c2_bias_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp$assignvariableop_76_adam_c3_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp"assignvariableop_77_adam_c3_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp$assignvariableop_78_adam_d1_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp"assignvariableop_79_adam_d1_bias_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp$assignvariableop_80_adam_d2_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp"assignvariableop_81_adam_d2_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_82Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_83IdentityIdentity_82:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_83Identity_83:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
$__inference_D2_layer_call_fn_1465782

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
?__inference_D2_layer_call_and_return_conditional_losses_1463693o
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
?
?
@__inference_CT5_layer_call_and_return_conditional_losses_1465682

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:?????????_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_3_layer_call_fn_1465828

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1463072z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1465823

inputs
identitya
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_20
serving_default_input_2:0?????????d8
disc0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

layer_with_weights-0

layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
!iter

"beta_1

#beta_2
	$decay
%learning_rate&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?0m?1m?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?0v?1v?"
	optimizer
?
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
212
313
414
515
616
717
818
919
:20
;21"
trackable_list_wrapper
v
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

&kernel
'bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
I
activation

(kernel
)bias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
N
activation

*kernel
+bias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
S
activation

,kernel
-bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
X
activation

.kernel
/bias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
v
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111"
trackable_list_wrapper
v
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111"
trackable_list_wrapper
 "
trackable_list_wrapper
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
f
activation

2kernel
3bias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
k
activation

4kernel
5bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
p
activation

6kernel
7bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
y
activation

8kernel
9bias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?"
	optimizer
f
20
31
42
53
64
75
86
97
:8
;9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
:	d?2inp_D/kernel
:?2
inp_D/bias
$:"  2
CT1/kernel
: 2CT1/bias
$:"@ 2
CT2/kernel
:@2CT2/bias
$:"@@2
CT3/kernel
:@2CT3/bias
$:"@@2
CT4/kernel
:@2CT4/bias
$:"@2
CT5/kernel
:2CT5/bias
#:! 2	C1/kernel
: 2C1/bias
#:! @2	C2/kernel
:@2C2/bias
#:!@ 2	C3/kernel
: 2C3/bias
:	?@2	D1/kernel
:@2D1/bias
:@2	D2/kernel
:2D2/bias
f
20
31
42
53
64
75
86
97
:8
;9"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
Q

0
1
2
3
4
5
6"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
q	variables
rtrainable_variables
sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
u	variables
vtrainable_variables
wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
f
20
31
42
53
64
75
86
97
:8
;9"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
(
?0"
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
I0"
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
N0"
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
S0"
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
X0"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
20
31"
trackable_list_wrapper
'
f0"
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
40
51"
trackable_list_wrapper
'
k0"
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
60
71"
trackable_list_wrapper
'
p0"
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
80
91"
trackable_list_wrapper
'
y0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
:0
;1"
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

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
$:"	d?2Adam/inp_D/kernel/m
:?2Adam/inp_D/bias/m
):'  2Adam/CT1/kernel/m
: 2Adam/CT1/bias/m
):'@ 2Adam/CT2/kernel/m
:@2Adam/CT2/bias/m
):'@@2Adam/CT3/kernel/m
:@2Adam/CT3/bias/m
):'@@2Adam/CT4/kernel/m
:@2Adam/CT4/bias/m
):'@2Adam/CT5/kernel/m
:2Adam/CT5/bias/m
$:"	d?2Adam/inp_D/kernel/v
:?2Adam/inp_D/bias/v
):'  2Adam/CT1/kernel/v
: 2Adam/CT1/bias/v
):'@ 2Adam/CT2/kernel/v
:@2Adam/CT2/bias/v
):'@@2Adam/CT3/kernel/v
:@2Adam/CT3/bias/v
):'@@2Adam/CT4/kernel/v
:@2Adam/CT4/bias/v
):'@2Adam/CT5/kernel/v
:2Adam/CT5/bias/v
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
%__inference_GAN_layer_call_fn_1464045
%__inference_GAN_layer_call_fn_1464448
%__inference_GAN_layer_call_fn_1464497
%__inference_GAN_layer_call_fn_1464242?
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
@__inference_GAN_layer_call_and_return_conditional_losses_1464655
@__inference_GAN_layer_call_and_return_conditional_losses_1464813
@__inference_GAN_layer_call_and_return_conditional_losses_1464292
@__inference_GAN_layer_call_and_return_conditional_losses_1464342?
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
"__inference__wrapped_model_1462848input_2"?
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
?2?
,__inference_sequential_layer_call_fn_1463346
,__inference_sequential_layer_call_fn_1464842
,__inference_sequential_layer_call_fn_1464871
,__inference_sequential_layer_call_fn_1463529?
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
G__inference_sequential_layer_call_and_return_conditional_losses_1464992
G__inference_sequential_layer_call_and_return_conditional_losses_1465113
G__inference_sequential_layer_call_and_return_conditional_losses_1463564
G__inference_sequential_layer_call_and_return_conditional_losses_1463599?
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
?2?
&__inference_disc_layer_call_fn_1463723
&__inference_disc_layer_call_fn_1465144
&__inference_disc_layer_call_fn_1465169
&__inference_disc_layer_call_fn_1463884?
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
A__inference_disc_layer_call_and_return_conditional_losses_1465210
A__inference_disc_layer_call_and_return_conditional_losses_1465251
A__inference_disc_layer_call_and_return_conditional_losses_1463914
A__inference_disc_layer_call_and_return_conditional_losses_1463944?
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
%__inference_signature_wrapper_1464399input_2"?
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
?2?
'__inference_inp_D_layer_call_fn_1465260?
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
B__inference_inp_D_layer_call_and_return_conditional_losses_1465271?
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
)__inference_reshape_layer_call_fn_1465276?
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
D__inference_reshape_layer_call_and_return_conditional_losses_1465290?
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
%__inference_CT1_layer_call_fn_1465299
%__inference_CT1_layer_call_fn_1465308?
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
?2?
@__inference_CT1_layer_call_and_return_conditional_losses_1465342
@__inference_CT1_layer_call_and_return_conditional_losses_1465366?
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
%__inference_CT2_layer_call_fn_1465375
%__inference_CT2_layer_call_fn_1465384?
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
?2?
@__inference_CT2_layer_call_and_return_conditional_losses_1465422
@__inference_CT2_layer_call_and_return_conditional_losses_1465446?
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
%__inference_CT3_layer_call_fn_1465455
%__inference_CT3_layer_call_fn_1465464?
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
?2?
@__inference_CT3_layer_call_and_return_conditional_losses_1465502
@__inference_CT3_layer_call_and_return_conditional_losses_1465526?
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
%__inference_CT4_layer_call_fn_1465535
%__inference_CT4_layer_call_fn_1465544?
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
?2?
@__inference_CT4_layer_call_and_return_conditional_losses_1465582
@__inference_CT4_layer_call_and_return_conditional_losses_1465606?
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
%__inference_CT5_layer_call_fn_1465615
%__inference_CT5_layer_call_fn_1465624?
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
?2?
@__inference_CT5_layer_call_and_return_conditional_losses_1465658
@__inference_CT5_layer_call_and_return_conditional_losses_1465682?
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
$__inference_C1_layer_call_fn_1465691?
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
?__inference_C1_layer_call_and_return_conditional_losses_1465702?
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
$__inference_C2_layer_call_fn_1465711?
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
?__inference_C2_layer_call_and_return_conditional_losses_1465722?
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
$__inference_C3_layer_call_fn_1465731?
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
?__inference_C3_layer_call_and_return_conditional_losses_1465742?
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
#__inference_F_layer_call_fn_1465747?
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
>__inference_F_layer_call_and_return_conditional_losses_1465753?
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
$__inference_D1_layer_call_fn_1465762?
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
?__inference_D1_layer_call_and_return_conditional_losses_1465773?
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
$__inference_D2_layer_call_fn_1465782?
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
?__inference_D2_layer_call_and_return_conditional_losses_1465793?
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
-__inference_leaky_re_lu_layer_call_fn_1465798?
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
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1465803?
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
/__inference_leaky_re_lu_1_layer_call_fn_1465808?
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
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1465813?
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
/__inference_leaky_re_lu_2_layer_call_fn_1465818?
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
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1465823?
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
/__inference_leaky_re_lu_3_layer_call_fn_1465828?
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
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1465833?
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
?__inference_C1_layer_call_and_return_conditional_losses_1465702l237?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
$__inference_C1_layer_call_fn_1465691_237?4
-?*
(?%
inputs?????????
? " ?????????? ?
?__inference_C2_layer_call_and_return_conditional_losses_1465722l457?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
$__inference_C2_layer_call_fn_1465711_457?4
-?*
(?%
inputs????????? 
? " ??????????@?
?__inference_C3_layer_call_and_return_conditional_losses_1465742l677?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0????????? 
? ?
$__inference_C3_layer_call_fn_1465731_677?4
-?*
(?%
inputs?????????@
? " ?????????? ?
@__inference_CT1_layer_call_and_return_conditional_losses_1465342?()I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+??????????????????????????? 
? ?
@__inference_CT1_layer_call_and_return_conditional_losses_1465366l()7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
%__inference_CT1_layer_call_fn_1465299?()I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+??????????????????????????? ?
%__inference_CT1_layer_call_fn_1465308_()7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
@__inference_CT2_layer_call_and_return_conditional_losses_1465422?*+I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????@
? ?
@__inference_CT2_layer_call_and_return_conditional_losses_1465446l*+7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????

@
? ?
%__inference_CT2_layer_call_fn_1465375?*+I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+???????????????????????????@?
%__inference_CT2_layer_call_fn_1465384_*+7?4
-?*
(?%
inputs????????? 
? " ??????????

@?
@__inference_CT3_layer_call_and_return_conditional_losses_1465502?,-I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
@__inference_CT3_layer_call_and_return_conditional_losses_1465526l,-7?4
-?*
(?%
inputs?????????

@
? "-?*
#? 
0?????????@
? ?
%__inference_CT3_layer_call_fn_1465455?,-I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
%__inference_CT3_layer_call_fn_1465464_,-7?4
-?*
(?%
inputs?????????

@
? " ??????????@?
@__inference_CT4_layer_call_and_return_conditional_losses_1465582?./I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
@__inference_CT4_layer_call_and_return_conditional_losses_1465606l./7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
%__inference_CT4_layer_call_fn_1465535?./I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
%__inference_CT4_layer_call_fn_1465544_./7?4
-?*
(?%
inputs?????????@
? " ??????????@?
@__inference_CT5_layer_call_and_return_conditional_losses_1465658?01I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
@__inference_CT5_layer_call_and_return_conditional_losses_1465682l017?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????
? ?
%__inference_CT5_layer_call_fn_1465615?01I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
%__inference_CT5_layer_call_fn_1465624_017?4
-?*
(?%
inputs?????????@
? " ???????????
?__inference_D1_layer_call_and_return_conditional_losses_1465773]890?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? x
$__inference_D1_layer_call_fn_1465762P890?-
&?#
!?
inputs??????????
? "??????????@?
?__inference_D2_layer_call_and_return_conditional_losses_1465793\:;/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? w
$__inference_D2_layer_call_fn_1465782O:;/?,
%?"
 ?
inputs?????????@
? "???????????
>__inference_F_layer_call_and_return_conditional_losses_1465753a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? {
#__inference_F_layer_call_fn_1465747T7?4
-?*
(?%
inputs????????? 
? "????????????
@__inference_GAN_layer_call_and_return_conditional_losses_1464292y&'()*+,-./0123456789:;8?5
.?+
!?
input_2?????????d
p 

 
? "%?"
?
0?????????
? ?
@__inference_GAN_layer_call_and_return_conditional_losses_1464342y&'()*+,-./0123456789:;8?5
.?+
!?
input_2?????????d
p

 
? "%?"
?
0?????????
? ?
@__inference_GAN_layer_call_and_return_conditional_losses_1464655x&'()*+,-./0123456789:;7?4
-?*
 ?
inputs?????????d
p 

 
? "%?"
?
0?????????
? ?
@__inference_GAN_layer_call_and_return_conditional_losses_1464813x&'()*+,-./0123456789:;7?4
-?*
 ?
inputs?????????d
p

 
? "%?"
?
0?????????
? ?
%__inference_GAN_layer_call_fn_1464045l&'()*+,-./0123456789:;8?5
.?+
!?
input_2?????????d
p 

 
? "???????????
%__inference_GAN_layer_call_fn_1464242l&'()*+,-./0123456789:;8?5
.?+
!?
input_2?????????d
p

 
? "???????????
%__inference_GAN_layer_call_fn_1464448k&'()*+,-./0123456789:;7?4
-?*
 ?
inputs?????????d
p 

 
? "???????????
%__inference_GAN_layer_call_fn_1464497k&'()*+,-./0123456789:;7?4
-?*
 ?
inputs?????????d
p

 
? "???????????
"__inference__wrapped_model_1462848w&'()*+,-./0123456789:;0?-
&?#
!?
input_2?????????d
? "+?(
&
disc?
disc??????????
A__inference_disc_layer_call_and_return_conditional_losses_1463914u
23456789:;@?=
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
A__inference_disc_layer_call_and_return_conditional_losses_1463944u
23456789:;@?=
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
A__inference_disc_layer_call_and_return_conditional_losses_1465210t
23456789:;??<
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
A__inference_disc_layer_call_and_return_conditional_losses_1465251t
23456789:;??<
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
&__inference_disc_layer_call_fn_1463723h
23456789:;@?=
6?3
)?&
input_1?????????
p 

 
? "???????????
&__inference_disc_layer_call_fn_1463884h
23456789:;@?=
6?3
)?&
input_1?????????
p

 
? "???????????
&__inference_disc_layer_call_fn_1465144g
23456789:;??<
5?2
(?%
inputs?????????
p 

 
? "???????????
&__inference_disc_layer_call_fn_1465169g
23456789:;??<
5?2
(?%
inputs?????????
p

 
? "???????????
B__inference_inp_D_layer_call_and_return_conditional_losses_1465271]&'/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? {
'__inference_inp_D_layer_call_fn_1465260P&'/?,
%?"
 ?
inputs?????????d
? "????????????
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1465813?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_1_layer_call_fn_1465808I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1465823?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_2_layer_call_fn_1465818I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1465833?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_3_layer_call_fn_1465828I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1465803?I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+??????????????????????????? 
? ?
-__inference_leaky_re_lu_layer_call_fn_1465798I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+??????????????????????????? ?
D__inference_reshape_layer_call_and_return_conditional_losses_1465290a0?-
&?#
!?
inputs??????????
? "-?*
#? 
0????????? 
? ?
)__inference_reshape_layer_call_fn_1465276T0?-
&?#
!?
inputs??????????
? " ?????????? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1463564{&'()*+,-./01<?9
2?/
%?"
inp_D_input?????????d
p 

 
? "-?*
#? 
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1463599{&'()*+,-./01<?9
2?/
%?"
inp_D_input?????????d
p

 
? "-?*
#? 
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1464992v&'()*+,-./017?4
-?*
 ?
inputs?????????d
p 

 
? "-?*
#? 
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1465113v&'()*+,-./017?4
-?*
 ?
inputs?????????d
p

 
? "-?*
#? 
0?????????
? ?
,__inference_sequential_layer_call_fn_1463346n&'()*+,-./01<?9
2?/
%?"
inp_D_input?????????d
p 

 
? " ???????????
,__inference_sequential_layer_call_fn_1463529n&'()*+,-./01<?9
2?/
%?"
inp_D_input?????????d
p

 
? " ???????????
,__inference_sequential_layer_call_fn_1464842i&'()*+,-./017?4
-?*
 ?
inputs?????????d
p 

 
? " ???????????
,__inference_sequential_layer_call_fn_1464871i&'()*+,-./017?4
-?*
 ?
inputs?????????d
p

 
? " ???????????
%__inference_signature_wrapper_1464399?&'()*+,-./0123456789:;;?8
? 
1?.
,
input_2!?
input_2?????????d"+?(
&
disc?
disc?????????