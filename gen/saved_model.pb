??
??
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
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ߤ
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

NoOpNoOp
?+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value?+B?+ B?+
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
x

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
x

activation

 kernel
!bias
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
x
-
activation

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
 
V
0
1
2
3
 4
!5
'6
(7
.8
/9
410
511
V
0
1
2
3
 4
!5
'6
(7
.8
/9
410
511
 
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
		variables

trainable_variables
regularization_losses
 
XV
VARIABLE_VALUEinp_D/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
inp_D/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
R
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
VT
VARIABLE_VALUE
CT1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUECT1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
R
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
VT
VARIABLE_VALUE
CT2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUECT2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
"	variables
#trainable_variables
$regularization_losses
R
[	variables
\trainable_variables
]regularization_losses
^	keras_api
VT
VARIABLE_VALUE
CT3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUECT3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
)	variables
*trainable_variables
+regularization_losses
R
d	variables
etrainable_variables
fregularization_losses
g	keras_api
VT
VARIABLE_VALUE
CT4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUECT4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
0	variables
1trainable_variables
2regularization_losses
VT
VARIABLE_VALUE
CT5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUECT5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
6	variables
7trainable_variables
8regularization_losses
 
1
0
1
2
3
4
5
6

r0
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
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 

0
 
 
 
 
 
 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
R	variables
Strainable_variables
Tregularization_losses
 

0
 
 
 
 
 
 
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
 

&0
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
d	variables
etrainable_variables
fregularization_losses
 

-0
 
 
 
 
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
~
serving_default_inp_D_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inp_D_inputinp_D/kernel
inp_D/bias
CT1/kernelCT1/bias
CT2/kernelCT2/bias
CT3/kernelCT3/bias
CT4/kernelCT4/bias
CT5/kernelCT5/bias*
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
GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1460643
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename inp_D/kernel/Read/ReadVariableOpinp_D/bias/Read/ReadVariableOpCT1/kernel/Read/ReadVariableOpCT1/bias/Read/ReadVariableOpCT2/kernel/Read/ReadVariableOpCT2/bias/Read/ReadVariableOpCT3/kernel/Read/ReadVariableOpCT3/bias/Read/ReadVariableOpCT4/kernel/Read/ReadVariableOpCT4/bias/Read/ReadVariableOpCT5/kernel/Read/ReadVariableOpCT5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2*
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
 __inference__traced_save_1461479
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameinp_D/kernel
inp_D/bias
CT1/kernelCT1/bias
CT2/kernelCT2/bias
CT3/kernelCT3/bias
CT4/kernelCT4/bias
CT5/kernelCT5/biastotalcount*
Tin
2*
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
#__inference__traced_restore_1461531??
?
?
,__inference_sequential_layer_call_fn_1460542
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
G__inference_sequential_layer_call_and_return_conditional_losses_1460486w
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
B__inference_inp_D_layer_call_and_return_conditional_losses_1460963

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
?
?
%__inference_CT2_layer_call_fn_1461067

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
@__inference_CT2_layer_call_and_return_conditional_losses_1459966?
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
?
?
@__inference_CT3_layer_call_and_return_conditional_losses_1460267

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
?#
?
@__inference_CT1_layer_call_and_return_conditional_losses_1459905

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
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1459902?
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
?
?
%__inference_CT4_layer_call_fn_1461236

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
@__inference_CT4_layer_call_and_return_conditional_losses_1460296w
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
?
f
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1461394

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
f
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1461414

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
?!
?
G__inference_sequential_layer_call_and_return_conditional_losses_1460332

inputs 
inp_d_1460165:	d?
inp_d_1460167:	?%
ct1_1460210:  
ct1_1460212: %
ct2_1460239:@ 
ct2_1460241:@%
ct3_1460268:@@
ct3_1460270:@%
ct4_1460297:@@
ct4_1460299:@%
ct5_1460326:@
ct5_1460328:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinputsinp_d_1460165inp_d_1460167*
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
B__inference_inp_D_layer_call_and_return_conditional_losses_1460164?
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
D__inference_reshape_layer_call_and_return_conditional_losses_1460184?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1460210ct1_1460212*
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
@__inference_CT1_layer_call_and_return_conditional_losses_1460209?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1460239ct2_1460241*
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
@__inference_CT2_layer_call_and_return_conditional_losses_1460238?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1460268ct3_1460270*
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
@__inference_CT3_layer_call_and_return_conditional_losses_1460267?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1460297ct4_1460299*
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
@__inference_CT4_layer_call_and_return_conditional_losses_1460296?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1460326ct5_1460328*
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
@__inference_CT5_layer_call_and_return_conditional_losses_1460325{
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
?
f
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1460085

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
@__inference_CT4_layer_call_and_return_conditional_losses_1461298

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
?

?
B__inference_inp_D_layer_call_and_return_conditional_losses_1460164

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
?
K
/__inference_leaky_re_lu_1_layer_call_fn_1461389

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
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1459963z
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
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1459963

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
?
,__inference_sequential_layer_call_fn_1460701

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
G__inference_sequential_layer_call_and_return_conditional_losses_1460486w
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
љ
?
"__inference__wrapped_model_1459861
inp_d_inputB
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
.sequential_ct5_biasadd_readvariableop_resource:
identity??%sequential/CT1/BiasAdd/ReadVariableOp?.sequential/CT1/conv2d_transpose/ReadVariableOp?%sequential/CT2/BiasAdd/ReadVariableOp?.sequential/CT2/conv2d_transpose/ReadVariableOp?%sequential/CT3/BiasAdd/ReadVariableOp?.sequential/CT3/conv2d_transpose/ReadVariableOp?%sequential/CT4/BiasAdd/ReadVariableOp?.sequential/CT4/conv2d_transpose/ReadVariableOp?%sequential/CT5/BiasAdd/ReadVariableOp?.sequential/CT5/conv2d_transpose/ReadVariableOp?'sequential/inp_D/BiasAdd/ReadVariableOp?&sequential/inp_D/MatMul/ReadVariableOp?
&sequential/inp_D/MatMul/ReadVariableOpReadVariableOp/sequential_inp_d_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
sequential/inp_D/MatMulMatMulinp_d_input.sequential/inp_D/MatMul/ReadVariableOp:value:0*
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
:?????????n
IdentityIdentitysequential/CT5/Tanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp&^sequential/CT1/BiasAdd/ReadVariableOp/^sequential/CT1/conv2d_transpose/ReadVariableOp&^sequential/CT2/BiasAdd/ReadVariableOp/^sequential/CT2/conv2d_transpose/ReadVariableOp&^sequential/CT3/BiasAdd/ReadVariableOp/^sequential/CT3/conv2d_transpose/ReadVariableOp&^sequential/CT4/BiasAdd/ReadVariableOp/^sequential/CT4/conv2d_transpose/ReadVariableOp&^sequential/CT5/BiasAdd/ReadVariableOp/^sequential/CT5/conv2d_transpose/ReadVariableOp(^sequential/inp_D/BiasAdd/ReadVariableOp'^sequential/inp_D/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????d: : : : : : : : : : : : 2N
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
&sequential/inp_D/MatMul/ReadVariableOp&sequential/inp_D/MatMul/ReadVariableOp:T P
'
_output_shapes
:?????????d
%
_user_specified_nameinp_D_input
?
f
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1460024

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
?
?
%__inference_CT5_layer_call_fn_1461316

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
@__inference_CT5_layer_call_and_return_conditional_losses_1460325w
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
?
I
-__inference_leaky_re_lu_layer_call_fn_1461379

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
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1459902z
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
?$
?
@__inference_CT3_layer_call_and_return_conditional_losses_1461194

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
?
?
,__inference_sequential_layer_call_fn_1460359
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
G__inference_sequential_layer_call_and_return_conditional_losses_1460332w
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
?
?
@__inference_CT2_layer_call_and_return_conditional_losses_1460238

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
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1460943

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
?
?
%__inference_CT2_layer_call_fn_1461076

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
@__inference_CT2_layer_call_and_return_conditional_losses_1460238w
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
?!
?
@__inference_CT5_layer_call_and_return_conditional_losses_1461350

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
?
?
'__inference_inp_D_layer_call_fn_1460952

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
B__inference_inp_D_layer_call_and_return_conditional_losses_1460164p
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
?
?
%__inference_CT1_layer_call_fn_1461000

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
@__inference_CT1_layer_call_and_return_conditional_losses_1460209w
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
?
?
%__inference_CT3_layer_call_fn_1461147

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
@__inference_CT3_layer_call_and_return_conditional_losses_1460027?
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
?
?
%__inference_CT4_layer_call_fn_1461227

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
@__inference_CT4_layer_call_and_return_conditional_losses_1460088?
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
?
K
/__inference_leaky_re_lu_2_layer_call_fn_1461399

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
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1460024z
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
?
?
@__inference_CT2_layer_call_and_return_conditional_losses_1461138

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
?%
?
@__inference_CT4_layer_call_and_return_conditional_losses_1460088

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
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1460085?
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
?!
?
@__inference_CT1_layer_call_and_return_conditional_losses_1461034

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
?$
?
@__inference_CT4_layer_call_and_return_conditional_losses_1461274

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
?
E
)__inference_reshape_layer_call_fn_1460968

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
D__inference_reshape_layer_call_and_return_conditional_losses_1460184h
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
?
?
%__inference_CT3_layer_call_fn_1461156

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
@__inference_CT3_layer_call_and_return_conditional_losses_1460267w
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
?9
?
#__inference__traced_restore_1461531
file_prefix0
assignvariableop_inp_d_kernel:	d?,
assignvariableop_1_inp_d_bias:	?7
assignvariableop_2_ct1_kernel:  )
assignvariableop_3_ct1_bias: 7
assignvariableop_4_ct2_kernel:@ )
assignvariableop_5_ct2_bias:@7
assignvariableop_6_ct3_kernel:@@)
assignvariableop_7_ct3_bias:@7
assignvariableop_8_ct4_kernel:@@)
assignvariableop_9_ct4_bias:@8
assignvariableop_10_ct5_kernel:@*
assignvariableop_11_ct5_bias:#
assignvariableop_12_total: #
assignvariableop_13_count: 
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_inp_d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_inp_d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_ct1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_ct1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_ct2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_ct2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_ct3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_ct3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_ct4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_ct4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_ct5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_ct5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
?
%__inference_signature_wrapper_1460643
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
GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_1459861w
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
?
?
%__inference_CT5_layer_call_fn_1461307

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
@__inference_CT5_layer_call_and_return_conditional_losses_1460139?
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
?
?
@__inference_CT1_layer_call_and_return_conditional_losses_1460209

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
?$
?
@__inference_CT2_layer_call_and_return_conditional_losses_1461114

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
?"
?
G__inference_sequential_layer_call_and_return_conditional_losses_1460577
inp_d_input 
inp_d_1460545:	d?
inp_d_1460547:	?%
ct1_1460551:  
ct1_1460553: %
ct2_1460556:@ 
ct2_1460558:@%
ct3_1460561:@@
ct3_1460563:@%
ct4_1460566:@@
ct4_1460568:@%
ct5_1460571:@
ct5_1460573:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinp_d_inputinp_d_1460545inp_d_1460547*
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
B__inference_inp_D_layer_call_and_return_conditional_losses_1460164?
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
D__inference_reshape_layer_call_and_return_conditional_losses_1460184?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1460551ct1_1460553*
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
@__inference_CT1_layer_call_and_return_conditional_losses_1460209?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1460556ct2_1460558*
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
@__inference_CT2_layer_call_and_return_conditional_losses_1460238?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1460561ct3_1460563*
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
@__inference_CT3_layer_call_and_return_conditional_losses_1460267?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1460566ct4_1460568*
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
@__inference_CT4_layer_call_and_return_conditional_losses_1460296?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1460571ct5_1460573*
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
@__inference_CT5_layer_call_and_return_conditional_losses_1460325{
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
?%
?
 __inference__traced_save_1461479
file_prefix+
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
#savev2_ct5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_inp_d_kernel_read_readvariableop%savev2_inp_d_bias_read_readvariableop%savev2_ct1_kernel_read_readvariableop#savev2_ct1_bias_read_readvariableop%savev2_ct2_kernel_read_readvariableop#savev2_ct2_bias_read_readvariableop%savev2_ct3_kernel_read_readvariableop#savev2_ct3_bias_read_readvariableop%savev2_ct4_kernel_read_readvariableop#savev2_ct4_bias_read_readvariableop%savev2_ct5_kernel_read_readvariableop#savev2_ct5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	d?:?:  : :@ :@:@@:@:@@:@:@:: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	d?:!

_output_shapes	
:?:,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:@ : 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_CT1_layer_call_fn_1460991

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
@__inference_CT1_layer_call_and_return_conditional_losses_1459905?
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
?
d
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1461384

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
?
?
@__inference_CT1_layer_call_and_return_conditional_losses_1461058

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
?
?
@__inference_CT5_layer_call_and_return_conditional_losses_1461374

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
`
D__inference_reshape_layer_call_and_return_conditional_losses_1460184

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
?!
?
@__inference_CT5_layer_call_and_return_conditional_losses_1460139

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
?
`
D__inference_reshape_layer_call_and_return_conditional_losses_1460982

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
?%
?
@__inference_CT3_layer_call_and_return_conditional_losses_1460027

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
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1460024?
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
?"
?
G__inference_sequential_layer_call_and_return_conditional_losses_1460612
inp_d_input 
inp_d_1460580:	d?
inp_d_1460582:	?%
ct1_1460586:  
ct1_1460588: %
ct2_1460591:@ 
ct2_1460593:@%
ct3_1460596:@@
ct3_1460598:@%
ct4_1460601:@@
ct4_1460603:@%
ct5_1460606:@
ct5_1460608:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinp_d_inputinp_d_1460580inp_d_1460582*
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
B__inference_inp_D_layer_call_and_return_conditional_losses_1460164?
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
D__inference_reshape_layer_call_and_return_conditional_losses_1460184?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1460586ct1_1460588*
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
@__inference_CT1_layer_call_and_return_conditional_losses_1460209?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1460591ct2_1460593*
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
@__inference_CT2_layer_call_and_return_conditional_losses_1460238?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1460596ct3_1460598*
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
@__inference_CT3_layer_call_and_return_conditional_losses_1460267?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1460601ct4_1460603*
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
@__inference_CT4_layer_call_and_return_conditional_losses_1460296?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1460606ct5_1460608*
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
@__inference_CT5_layer_call_and_return_conditional_losses_1460325{
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
f
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1461404

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
??
?	
G__inference_sequential_layer_call_and_return_conditional_losses_1460822

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
?
d
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1459902

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
?
?
@__inference_CT4_layer_call_and_return_conditional_losses_1460296

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
?!
?
G__inference_sequential_layer_call_and_return_conditional_losses_1460486

inputs 
inp_d_1460454:	d?
inp_d_1460456:	?%
ct1_1460460:  
ct1_1460462: %
ct2_1460465:@ 
ct2_1460467:@%
ct3_1460470:@@
ct3_1460472:@%
ct4_1460475:@@
ct4_1460477:@%
ct5_1460480:@
ct5_1460482:
identity??CT1/StatefulPartitionedCall?CT2/StatefulPartitionedCall?CT3/StatefulPartitionedCall?CT4/StatefulPartitionedCall?CT5/StatefulPartitionedCall?inp_D/StatefulPartitionedCall?
inp_D/StatefulPartitionedCallStatefulPartitionedCallinputsinp_d_1460454inp_d_1460456*
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
B__inference_inp_D_layer_call_and_return_conditional_losses_1460164?
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
D__inference_reshape_layer_call_and_return_conditional_losses_1460184?
CT1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0ct1_1460460ct1_1460462*
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
@__inference_CT1_layer_call_and_return_conditional_losses_1460209?
CT2/StatefulPartitionedCallStatefulPartitionedCall$CT1/StatefulPartitionedCall:output:0ct2_1460465ct2_1460467*
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
@__inference_CT2_layer_call_and_return_conditional_losses_1460238?
CT3/StatefulPartitionedCallStatefulPartitionedCall$CT2/StatefulPartitionedCall:output:0ct3_1460470ct3_1460472*
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
@__inference_CT3_layer_call_and_return_conditional_losses_1460267?
CT4/StatefulPartitionedCallStatefulPartitionedCall$CT3/StatefulPartitionedCall:output:0ct4_1460475ct4_1460477*
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
@__inference_CT4_layer_call_and_return_conditional_losses_1460296?
CT5/StatefulPartitionedCallStatefulPartitionedCall$CT4/StatefulPartitionedCall:output:0ct5_1460480ct5_1460482*
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
@__inference_CT5_layer_call_and_return_conditional_losses_1460325{
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
?
?
,__inference_sequential_layer_call_fn_1460672

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
G__inference_sequential_layer_call_and_return_conditional_losses_1460332w
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
?
K
/__inference_leaky_re_lu_3_layer_call_fn_1461409

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
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1460085z
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
?
?
@__inference_CT3_layer_call_and_return_conditional_losses_1461218

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
?
?
@__inference_CT5_layer_call_and_return_conditional_losses_1460325

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
?%
?
@__inference_CT2_layer_call_and_return_conditional_losses_1459966

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
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1459963?
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
inp_D_input4
serving_default_inp_D_input:0?????????d?
CT58
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

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
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

activation

 kernel
!bias
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
-
activation

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
v
0
1
2
3
 4
!5
'6
(7
.8
/9
410
511"
trackable_list_wrapper
v
0
1
2
3
 4
!5
'6
(7
.8
/9
410
511"
trackable_list_wrapper
 "
trackable_list_wrapper
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
		variables

trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
:	d?2inp_D/kernel
:?2
inp_D/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
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
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
$:"  2
CT1/kernel
: 2CT1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
$:"@ 2
CT2/kernel
:@2CT2/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
"	variables
#trainable_variables
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
$:"@@2
CT3/kernel
:@2CT3/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
$:"@@2
CT4/kernel
:@2CT4/bias
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
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
0	variables
1trainable_variables
2regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"@2
CT5/kernel
:2CT5/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
6	variables
7trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
'
r0"
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
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
R	variables
Strainable_variables
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
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
d	variables
etrainable_variables
fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
-0"
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
?2?
,__inference_sequential_layer_call_fn_1460359
,__inference_sequential_layer_call_fn_1460672
,__inference_sequential_layer_call_fn_1460701
,__inference_sequential_layer_call_fn_1460542?
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
G__inference_sequential_layer_call_and_return_conditional_losses_1460822
G__inference_sequential_layer_call_and_return_conditional_losses_1460943
G__inference_sequential_layer_call_and_return_conditional_losses_1460577
G__inference_sequential_layer_call_and_return_conditional_losses_1460612?
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
"__inference__wrapped_model_1459861inp_D_input"?
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
'__inference_inp_D_layer_call_fn_1460952?
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
B__inference_inp_D_layer_call_and_return_conditional_losses_1460963?
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
)__inference_reshape_layer_call_fn_1460968?
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
D__inference_reshape_layer_call_and_return_conditional_losses_1460982?
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
%__inference_CT1_layer_call_fn_1460991
%__inference_CT1_layer_call_fn_1461000?
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
@__inference_CT1_layer_call_and_return_conditional_losses_1461034
@__inference_CT1_layer_call_and_return_conditional_losses_1461058?
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
%__inference_CT2_layer_call_fn_1461067
%__inference_CT2_layer_call_fn_1461076?
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
@__inference_CT2_layer_call_and_return_conditional_losses_1461114
@__inference_CT2_layer_call_and_return_conditional_losses_1461138?
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
%__inference_CT3_layer_call_fn_1461147
%__inference_CT3_layer_call_fn_1461156?
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
@__inference_CT3_layer_call_and_return_conditional_losses_1461194
@__inference_CT3_layer_call_and_return_conditional_losses_1461218?
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
%__inference_CT4_layer_call_fn_1461227
%__inference_CT4_layer_call_fn_1461236?
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
@__inference_CT4_layer_call_and_return_conditional_losses_1461274
@__inference_CT4_layer_call_and_return_conditional_losses_1461298?
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
%__inference_CT5_layer_call_fn_1461307
%__inference_CT5_layer_call_fn_1461316?
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
@__inference_CT5_layer_call_and_return_conditional_losses_1461350
@__inference_CT5_layer_call_and_return_conditional_losses_1461374?
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
%__inference_signature_wrapper_1460643inp_D_input"?
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
-__inference_leaky_re_lu_layer_call_fn_1461379?
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
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1461384?
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
/__inference_leaky_re_lu_1_layer_call_fn_1461389?
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
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1461394?
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
/__inference_leaky_re_lu_2_layer_call_fn_1461399?
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
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1461404?
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
/__inference_leaky_re_lu_3_layer_call_fn_1461409?
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
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1461414?
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
@__inference_CT1_layer_call_and_return_conditional_losses_1461034?I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+??????????????????????????? 
? ?
@__inference_CT1_layer_call_and_return_conditional_losses_1461058l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
%__inference_CT1_layer_call_fn_1460991?I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+??????????????????????????? ?
%__inference_CT1_layer_call_fn_1461000_7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
@__inference_CT2_layer_call_and_return_conditional_losses_1461114? !I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????@
? ?
@__inference_CT2_layer_call_and_return_conditional_losses_1461138l !7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????

@
? ?
%__inference_CT2_layer_call_fn_1461067? !I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+???????????????????????????@?
%__inference_CT2_layer_call_fn_1461076_ !7?4
-?*
(?%
inputs????????? 
? " ??????????

@?
@__inference_CT3_layer_call_and_return_conditional_losses_1461194?'(I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
@__inference_CT3_layer_call_and_return_conditional_losses_1461218l'(7?4
-?*
(?%
inputs?????????

@
? "-?*
#? 
0?????????@
? ?
%__inference_CT3_layer_call_fn_1461147?'(I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
%__inference_CT3_layer_call_fn_1461156_'(7?4
-?*
(?%
inputs?????????

@
? " ??????????@?
@__inference_CT4_layer_call_and_return_conditional_losses_1461274?./I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
@__inference_CT4_layer_call_and_return_conditional_losses_1461298l./7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
%__inference_CT4_layer_call_fn_1461227?./I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
%__inference_CT4_layer_call_fn_1461236_./7?4
-?*
(?%
inputs?????????@
? " ??????????@?
@__inference_CT5_layer_call_and_return_conditional_losses_1461350?45I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
@__inference_CT5_layer_call_and_return_conditional_losses_1461374l457?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????
? ?
%__inference_CT5_layer_call_fn_1461307?45I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
%__inference_CT5_layer_call_fn_1461316_457?4
-?*
(?%
inputs?????????@
? " ???????????
"__inference__wrapped_model_1459861w !'(./454?1
*?'
%?"
inp_D_input?????????d
? "1?.
,
CT5%?"
CT5??????????
B__inference_inp_D_layer_call_and_return_conditional_losses_1460963]/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? {
'__inference_inp_D_layer_call_fn_1460952P/?,
%?"
 ?
inputs?????????d
? "????????????
J__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_1461394?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_1_layer_call_fn_1461389I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
J__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_1461404?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_2_layer_call_fn_1461399I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
J__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_1461414?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_3_layer_call_fn_1461409I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
H__inference_leaky_re_lu_layer_call_and_return_conditional_losses_1461384?I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+??????????????????????????? 
? ?
-__inference_leaky_re_lu_layer_call_fn_1461379I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+??????????????????????????? ?
D__inference_reshape_layer_call_and_return_conditional_losses_1460982a0?-
&?#
!?
inputs??????????
? "-?*
#? 
0????????? 
? ?
)__inference_reshape_layer_call_fn_1460968T0?-
&?#
!?
inputs??????????
? " ?????????? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1460577{ !'(./45<?9
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
G__inference_sequential_layer_call_and_return_conditional_losses_1460612{ !'(./45<?9
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
G__inference_sequential_layer_call_and_return_conditional_losses_1460822v !'(./457?4
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
G__inference_sequential_layer_call_and_return_conditional_losses_1460943v !'(./457?4
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
,__inference_sequential_layer_call_fn_1460359n !'(./45<?9
2?/
%?"
inp_D_input?????????d
p 

 
? " ???????????
,__inference_sequential_layer_call_fn_1460542n !'(./45<?9
2?/
%?"
inp_D_input?????????d
p

 
? " ???????????
,__inference_sequential_layer_call_fn_1460672i !'(./457?4
-?*
 ?
inputs?????????d
p 

 
? " ???????????
,__inference_sequential_layer_call_fn_1460701i !'(./457?4
-?*
 ?
inputs?????????d
p

 
? " ???????????
%__inference_signature_wrapper_1460643? !'(./45C?@
? 
9?6
4
inp_D_input%?"
inp_D_input?????????d"1?.
,
CT5%?"
CT5?????????