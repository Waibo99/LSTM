ќћ4
у
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
Г
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
О
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
executor_typestring 

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.22v2.6.1-9-gc2363d6d0258ж4
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
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

lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	**
shared_namelstm_1/lstm_cell_1/kernel

-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	*
dtype0
Ѓ
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel

7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_1/lstm_cell_1/bias

+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:*
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

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m

4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	*
dtype0
Б
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
Њ
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m

2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v

4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	*
dtype0
Б
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
Њ
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v

2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
З"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ђ!
valueш!Bх! Bо!
П
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
l
	cell


state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api

iter

beta_1

beta_2
	decay
learning_ratemAmBmCmDmEvFvGvHvIvJ
#
0
1
2
3
4
 
#
0
1
2
3
4
­
	variables
layer_regularization_losses
regularization_losses

layers
metrics
 non_trainable_variables
trainable_variables
!layer_metrics
 

"
state_size

kernel
recurrent_kernel
bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
 

0
1
2
 

0
1
2
Й
	variables
'layer_regularization_losses
regularization_losses

(layers
trainable_variables
)metrics
*non_trainable_variables

+states
,layer_metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
	variables
-layer_regularization_losses
regularization_losses

.layers
/metrics
0non_trainable_variables
trainable_variables
1layer_metrics
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
US
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

20
31
 
 
 

0
1
2
 

0
1
2
­
#	variables
4layer_regularization_losses
$regularization_losses

5layers
6metrics
7non_trainable_variables
%trainable_variables
8layer_metrics
 

	0
 
 
 
 
 
 
 
 
 
4
	9total
	:count
;	variables
<	keras_api
4
	=total
	>count
?	variables
@	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

90
:1

;	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

?	variables
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_2Placeholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
В
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2lstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biasdense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_36125
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ђ

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_39055
Н
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastotalcounttotal_1count_1Adam/dense_1/kernel/mAdam/dense_1/bias/m Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/v Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_39137Е3
	
я
,__inference_sequential_1_layer_call_fn_37062

inputs
unknown:	
	unknown_0:	@
	unknown_1:	
	unknown_2:@
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_354932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ	
М
while_cond_37157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_37157___redundant_placeholder03
/while_while_cond_37157___redundant_placeholder13
/while_while_cond_37157___redundant_placeholder23
/while_while_cond_37157___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЁA
П
__inference_standard_lstm_32878

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_32793*
condR
while_cond_32792*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_5bee67e9-e154-42bb-9f0d-32627fb302ad*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ЩH
Ы
(__inference_gpu_lstm_with_fallback_37808

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_c9b75d52-be26-4681-9a67-76aa9bce6c38*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ќ	
М
while_cond_32792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_32792___redundant_placeholder03
/while_while_cond_32792___redundant_placeholder13
/while_while_cond_32792___redundant_placeholder23
/while_while_cond_32792___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ќх
ё
9__inference___backward_gpu_lstm_with_fallback_37809_37985
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesђ
я:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџџџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_c9b75d52-be26-4681-9a67-76aa9bce6c38*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_37984*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Еф
ё
9__inference___backward_gpu_lstm_with_fallback_36863_37039
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*щ
_input_shapesз
д:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_2f3a1c67-ca85-4e91-8c87-d52eb45647c0*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_37038*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Еф
ё
9__inference___backward_gpu_lstm_with_fallback_38248_38424
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*щ
_input_shapesз
д:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_449c10a1-a4f1-433f-8913-ab2f7ef4bd54*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_38423*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ђ
Г
&__inference_lstm_1_layer_call_fn_38930

inputs
unknown:	
	unknown_0:	@
	unknown_1:	
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_354682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
'
Л
A__inference_lstm_1_layer_call_and_return_conditional_losses_35468

inputs/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	ones_likec
mulMulinputsones_like:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Х
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_351952
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ	
М
while_cond_36205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_36205___redundant_placeholder03
/while_while_cond_36205___redundant_placeholder13
/while_while_cond_36205___redundant_placeholder23
/while_while_cond_36205___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
я,
Ю
while_body_35642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
я,
Ю
while_body_33735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
К
Е
&__inference_lstm_1_layer_call_fn_38908
inputs_0
unknown:	
	unknown_0:	@
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_336002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ЁA
П
__inference_standard_lstm_38624

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_38539*
condR
while_cond_38538*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_9a58a01a-fa17-4fc1-843a-35e4af75ebfd*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
'
Л
A__inference_lstm_1_layer_call_and_return_conditional_losses_38426

inputs/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	ones_likec
mulMulinputsones_like:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Х
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_381532
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќх
ё
9__inference___backward_gpu_lstm_with_fallback_33915_34091
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesђ
я:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџџџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_fa6279d1-5931-40c0-8d05-abc7ddf33013*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_34090*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Г'
Л
A__inference_lstm_1_layer_call_and_return_conditional_losses_33600

inputs/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	ones_likel
mulMulinputsones_like:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ю
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_333272
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Н'
Н
A__inference_lstm_1_layer_call_and_return_conditional_losses_37516
inputs_0/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1Z
ones_like/ShapeShapeinputs_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	ones_liken
mulMulinputs_0ones_like:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ю
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_372432
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
яS
Ѓ
&__forward_gpu_lstm_with_fallback_38423

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_449c10a1-a4f1-433f-8913-ab2f7ef4bd54*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_38248_38424*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
H
Ы
(__inference_gpu_lstm_with_fallback_36385

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_9f30f761-f4f2-4daa-8648-c54f1c55115d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ИC
ї
 __inference__wrapped_model_33157
input_2C
0sequential_1_lstm_1_read_readvariableop_resource:	E
2sequential_1_lstm_1_read_1_readvariableop_resource:	@A
2sequential_1_lstm_1_read_2_readvariableop_resource:	E
3sequential_1_dense_1_matmul_readvariableop_resource:@B
4sequential_1_dense_1_biasadd_readvariableop_resource:
identityЂ+sequential_1/dense_1/BiasAdd/ReadVariableOpЂ*sequential_1/dense_1/MatMul/ReadVariableOpЂ'sequential_1/lstm_1/Read/ReadVariableOpЂ)sequential_1/lstm_1/Read_1/ReadVariableOpЂ)sequential_1/lstm_1/Read_2/ReadVariableOpm
sequential_1/lstm_1/ShapeShapeinput_2*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack 
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1 
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2к
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_slice
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_1/lstm_1/zeros/mul/yМ
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mul
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_1/lstm_1/zeros/Less/yЗ
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/Less
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_1/lstm_1/zeros/packed/1г
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packed
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/ConstХ
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_1/lstm_1/zeros
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_1/lstm_1/zeros_1/mul/yТ
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mul
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_1/lstm_1/zeros_1/Less/yП
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/Less
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_1/lstm_1/zeros_1/packed/1й
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packed
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/ConstЭ
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_1/lstm_1/zeros_1
#sequential_1/lstm_1/ones_like/ShapeShapeinput_2*
T0*
_output_shapes
:2%
#sequential_1/lstm_1/ones_like/Shape
#sequential_1/lstm_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#sequential_1/lstm_1/ones_like/Constи
sequential_1/lstm_1/ones_likeFill,sequential_1/lstm_1/ones_like/Shape:output:0,sequential_1/lstm_1/ones_like/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
sequential_1/lstm_1/ones_like 
sequential_1/lstm_1/mulMulinput_2&sequential_1/lstm_1/ones_like:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
sequential_1/lstm_1/mulФ
'sequential_1/lstm_1/Read/ReadVariableOpReadVariableOp0sequential_1_lstm_1_read_readvariableop_resource*
_output_shapes
:	*
dtype02)
'sequential_1/lstm_1/Read/ReadVariableOpЃ
sequential_1/lstm_1/IdentityIdentity/sequential_1/lstm_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
sequential_1/lstm_1/IdentityЪ
)sequential_1/lstm_1/Read_1/ReadVariableOpReadVariableOp2sequential_1_lstm_1_read_1_readvariableop_resource*
_output_shapes
:	@*
dtype02+
)sequential_1/lstm_1/Read_1/ReadVariableOpЉ
sequential_1/lstm_1/Identity_1Identity1sequential_1/lstm_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2 
sequential_1/lstm_1/Identity_1Ц
)sequential_1/lstm_1/Read_2/ReadVariableOpReadVariableOp2sequential_1_lstm_1_read_2_readvariableop_resource*
_output_shapes	
:*
dtype02+
)sequential_1/lstm_1/Read_2/ReadVariableOpЅ
sequential_1/lstm_1/Identity_2Identity1sequential_1/lstm_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2 
sequential_1/lstm_1/Identity_2х
#sequential_1/lstm_1/PartitionedCallPartitionedCallsequential_1/lstm_1/mul:z:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0%sequential_1/lstm_1/Identity:output:0'sequential_1/lstm_1/Identity_1:output:0'sequential_1/lstm_1/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_328782%
#sequential_1/lstm_1/PartitionedCallЬ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOpи
sequential_1/dense_1/MatMulMatMul,sequential_1/lstm_1/PartitionedCall:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_1/MatMulЫ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpе
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_1/BiasAdd
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЋ
NoOpNoOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp(^sequential_1/lstm_1/Read/ReadVariableOp*^sequential_1/lstm_1/Read_1/ReadVariableOp*^sequential_1/lstm_1/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2R
'sequential_1/lstm_1/Read/ReadVariableOp'sequential_1/lstm_1/Read/ReadVariableOp2V
)sequential_1/lstm_1/Read_1/ReadVariableOp)sequential_1/lstm_1/Read_1/ReadVariableOp2V
)sequential_1/lstm_1/Read_2/ReadVariableOp)sequential_1/lstm_1/Read_2/ReadVariableOp:T P
+
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_2
H
Ы
(__inference_gpu_lstm_with_fallback_36862

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_2f3a1c67-ca85-4e91-8c87-d52eb45647c0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
я,
Ю
while_body_32793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
H
Ы
(__inference_gpu_lstm_with_fallback_35289

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_35171045-1986-4dfc-a1c5-453e4b0403a1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
я,
Ю
while_body_37158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
Ќ	
М
while_cond_38067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_38067___redundant_placeholder03
/while_while_cond_38067___redundant_placeholder13
/while_while_cond_38067___redundant_placeholder23
/while_while_cond_38067___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
иA
П
__inference_standard_lstm_33327

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_33242*
condR
while_cond_33241*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_1698de91-63af-4a20-b00e-203f0b00747f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
я,
Ю
while_body_33242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
Н5

G__inference_sequential_1_layer_call_and_return_conditional_losses_36570

inputs6
#lstm_1_read_readvariableop_resource:	8
%lstm_1_read_1_readvariableop_resource:	@4
%lstm_1_read_2_readvariableop_resource:	8
&dense_1_matmul_readvariableop_resource:@5
'dense_1_biasadd_readvariableop_resource:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂlstm_1/Read/ReadVariableOpЂlstm_1/Read_1/ReadVariableOpЂlstm_1/Read_2/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/Shape
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros/mul/y
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros/Less/y
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros/packed/1
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros_1/mul/y
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros_1/Less/y
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros_1/packed/1Ѕ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_1/zeros_1f
lstm_1/ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/ones_like/Shapeu
lstm_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_1/ones_like/ConstЄ
lstm_1/ones_likeFilllstm_1/ones_like/Shape:output:0lstm_1/ones_like/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/ones_likex

lstm_1/mulMulinputslstm_1/ones_like:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2

lstm_1/mul
lstm_1/Read/ReadVariableOpReadVariableOp#lstm_1_read_readvariableop_resource*
_output_shapes
:	*
dtype02
lstm_1/Read/ReadVariableOp|
lstm_1/IdentityIdentity"lstm_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
lstm_1/IdentityЃ
lstm_1/Read_1/ReadVariableOpReadVariableOp%lstm_1_read_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_1/Read_1/ReadVariableOp
lstm_1/Identity_1Identity$lstm_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2
lstm_1/Identity_1
lstm_1/Read_2/ReadVariableOpReadVariableOp%lstm_1_read_2_readvariableop_resource*
_output_shapes	
:*
dtype02
lstm_1/Read_2/ReadVariableOp~
lstm_1/Identity_2Identity$lstm_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
lstm_1/Identity_2§
lstm_1/PartitionedCallPartitionedCalllstm_1/mul:z:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/Identity:output:0lstm_1/Identity_1:output:0lstm_1/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_362912
lstm_1/PartitionedCallЅ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_1/MatMul/ReadVariableOpЄ
dense_1/MatMulMatMullstm_1/PartitionedCall:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityъ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^lstm_1/Read/ReadVariableOp^lstm_1/Read_1/ReadVariableOp^lstm_1/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
lstm_1/Read/ReadVariableOplstm_1/Read/ReadVariableOp2<
lstm_1/Read_1/ReadVariableOplstm_1/Read_1/ReadVariableOp2<
lstm_1/Read_2/ReadVariableOplstm_1/Read_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Еф
ё
9__inference___backward_gpu_lstm_with_fallback_38719_38895
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*щ
_input_shapesз
д:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_9a58a01a-fa17-4fc1-843a-35e4af75ebfd*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_38894*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЩH
Ы
(__inference_gpu_lstm_with_fallback_37337

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_f2e19ccd-dbe2-41f6-9940-c598490611a3*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

Ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_35493

inputs
lstm_1_35469:	
lstm_1_35471:	@
lstm_1_35473:	
dense_1_35487:@
dense_1_35489:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_35469lstm_1_35471lstm_1_35473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_354682 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_35487dense_1_35489*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_354862!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЁA
П
__inference_standard_lstm_35195

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_35110*
condR
while_cond_35109*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_35171045-1986-4dfc-a1c5-453e4b0403a1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
я,
Ю
while_body_38539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
H
Ы
(__inference_gpu_lstm_with_fallback_38718

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_9a58a01a-fa17-4fc1-843a-35e4af75ebfd*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ќ	
М
while_cond_33734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_33734___redundant_placeholder03
/while_while_cond_33734___redundant_placeholder13
/while_while_cond_33734___redundant_placeholder23
/while_while_cond_33734___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЁA
П
__inference_standard_lstm_36768

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_36683*
condR
while_cond_36682*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_2f3a1c67-ca85-4e91-8c87-d52eb45647c0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
яS
Ѓ
&__forward_gpu_lstm_with_fallback_35465

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_35171045-1986-4dfc-a1c5-453e4b0403a1*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_35290_35466*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ќ	
М
while_cond_37628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_37628___redundant_placeholder03
/while_while_cond_37628___redundant_placeholder13
/while_while_cond_37628___redundant_placeholder23
/while_while_cond_37628___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

Ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_36042

inputs
lstm_1_36029:	
lstm_1_36031:	@
lstm_1_36033:	
dense_1_36036:@
dense_1_36038:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_36029lstm_1_36031lstm_1_36033*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_360002 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_36036dense_1_36038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_354862!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
№
,__inference_sequential_1_layer_call_fn_36070
input_2
unknown:	
	unknown_0:	@
	unknown_1:	
	unknown_2:@
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_360422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_2
Еф
ё
9__inference___backward_gpu_lstm_with_fallback_36386_36562
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*щ
_input_shapesз
д:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_9f30f761-f4f2-4daa-8648-c54f1c55115d*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_36561*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
яS
Ѓ
&__forward_gpu_lstm_with_fallback_35997

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_c9be1ecf-2399-4652-af14-301adb8d8a72*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_35822_35998*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

Ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_36102
input_2
lstm_1_36089:	
lstm_1_36091:	@
lstm_1_36093:	
dense_1_36096:@
dense_1_36098:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinput_2lstm_1_36089lstm_1_36091lstm_1_36093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_360002 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_36096dense_1_36098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_354862!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:T P
+
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_2
M
Л
A__inference_lstm_1_layer_call_and_return_conditional_losses_34093

inputs/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeр
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2џШ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeц
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2ыЃ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yг
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeх
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2ПЪ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yг
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeц
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2і2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yг
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/Mul_1k
mulMulinputsdropout/Mul_1:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ю
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_338202
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
у9
у

__inference__traced_save_39055
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЈ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*К
valueАB­B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesК
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesъ

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*В
_input_shapes 
: :@:: : : : : :	:	@:: : : : :@::	:	@::@::	:	@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
::
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
: :$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	@:!

_output_shapes	
::$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	@:!

_output_shapes	
::

_output_shapes
: 
Ђ
Г
&__inference_lstm_1_layer_call_fn_38941

inputs
unknown:	
	unknown_0:	@
	unknown_1:	
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_360002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЂM
Н
A__inference_lstm_1_layer_call_and_return_conditional_losses_37987
inputs_0/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1Z
ones_like/ShapeShapeinputs_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeр
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2ч2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeц
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2ВП2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yг
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeц
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2Ш2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yг
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeц
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype0*
seedБџх)*
seed2џЖр2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yг
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout_3/Mul_1m
mulMulinputs_0dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Ю
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_377142
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
я,
Ю
while_body_38068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
яS
Ѓ
&__forward_gpu_lstm_with_fallback_37038

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_2f3a1c67-ca85-4e91-8c87-d52eb45647c0*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_36863_37039*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
я,
Ю
while_body_37629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
ЩH
Ы
(__inference_gpu_lstm_with_fallback_33421

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_1698de91-63af-4a20-b00e-203f0b00747f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
T
Ѓ
&__forward_gpu_lstm_with_fallback_37984

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_c9b75d52-be26-4681-9a67-76aa9bce6c38*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_37809_37985*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
е
ч
#__inference_signature_wrapper_36125
input_2
unknown:	
	unknown_0:	@
	unknown_1:	
	unknown_2:@
	unknown_3:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_331572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_2
яS
Ѓ
&__forward_gpu_lstm_with_fallback_38894

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_9a58a01a-fa17-4fc1-843a-35e4af75ebfd*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_38719_38895*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ќ	
М
while_cond_35109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_35109___redundant_placeholder03
/while_while_cond_35109___redundant_placeholder13
/while_while_cond_35109___redundant_placeholder23
/while_while_cond_35109___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ќ	
М
while_cond_38538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_38538___redundant_placeholder03
/while_while_cond_38538___redundant_placeholder13
/while_while_cond_38538___redundant_placeholder23
/while_while_cond_38538___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЁA
П
__inference_standard_lstm_35727

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_35642*
condR
while_cond_35641*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_c9be1ecf-2399-4652-af14-301adb8d8a72*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ќх
ё
9__inference___backward_gpu_lstm_with_fallback_33422_33598
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesђ
я:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџџџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_1698de91-63af-4a20-b00e-203f0b00747f*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_33597*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Еф
ё
9__inference___backward_gpu_lstm_with_fallback_32973_33149
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*щ
_input_shapesз
д:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_5bee67e9-e154-42bb-9f0d-32627fb302ad*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_33148*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
К
Е
&__inference_lstm_1_layer_call_fn_38919
inputs_0
unknown:	
	unknown_0:	@
	unknown_1:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_340932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
H
Ы
(__inference_gpu_lstm_with_fallback_35821

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_c9be1ecf-2399-4652-af14-301adb8d8a72*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ЩH
Ы
(__inference_gpu_lstm_with_fallback_33914

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1п
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_fa6279d1-5931-40c0-8d05-abc7ddf33013*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ЁA
П
__inference_standard_lstm_36291

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_36206*
condR
while_cond_36205*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_9f30f761-f4f2-4daa-8648-c54f1c55115d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

Ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_36086
input_2
lstm_1_36073:	
lstm_1_36075:	@
lstm_1_36077:	
dense_1_36080:@
dense_1_36082:
identityЂdense_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinput_2lstm_1_36073lstm_1_36075lstm_1_36077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_354682 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_36080dense_1_36082*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_354862!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:T P
+
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_2
Ў_

G__inference_sequential_1_layer_call_and_return_conditional_losses_37047

inputs6
#lstm_1_read_readvariableop_resource:	8
%lstm_1_read_1_readvariableop_resource:	@4
%lstm_1_read_2_readvariableop_resource:	8
&dense_1_matmul_readvariableop_resource:@5
'dense_1_biasadd_readvariableop_resource:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂlstm_1/Read/ReadVariableOpЂlstm_1/Read_1/ReadVariableOpЂlstm_1/Read_2/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/Shape
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros/mul/y
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros/Less/y
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros/packed/1
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros_1/mul/y
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros_1/Less/y
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_1/zeros_1/packed/1Ѕ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_1/zeros_1f
lstm_1/ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/ones_like/Shapeu
lstm_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_1/ones_like/ConstЄ
lstm_1/ones_likeFilllstm_1/ones_like/Shape:output:0lstm_1/ones_like/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/ones_likeq
lstm_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
lstm_1/dropout/Const
lstm_1/dropout/MulMullstm_1/ones_like:output:0lstm_1/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout/Mulu
lstm_1/dropout/ShapeShapelstm_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_1/dropout/Shapeь
+lstm_1/dropout/random_uniform/RandomUniformRandomUniformlstm_1/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2њ2-
+lstm_1/dropout/random_uniform/RandomUniform
lstm_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
lstm_1/dropout/GreaterEqual/yо
lstm_1/dropout/GreaterEqualGreaterEqual4lstm_1/dropout/random_uniform/RandomUniform:output:0&lstm_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout/GreaterEqual
lstm_1/dropout/CastCastlstm_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout/Cast
lstm_1/dropout/Mul_1Mullstm_1/dropout/Mul:z:0lstm_1/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout/Mul_1u
lstm_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
lstm_1/dropout_1/ConstЅ
lstm_1/dropout_1/MulMullstm_1/ones_like:output:0lstm_1/dropout_1/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_1/Muly
lstm_1/dropout_1/ShapeShapelstm_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_1/dropout_1/Shapeђ
-lstm_1/dropout_1/random_uniform/RandomUniformRandomUniformlstm_1/dropout_1/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2і­Й2/
-lstm_1/dropout_1/random_uniform/RandomUniform
lstm_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2!
lstm_1/dropout_1/GreaterEqual/yц
lstm_1/dropout_1/GreaterEqualGreaterEqual6lstm_1/dropout_1/random_uniform/RandomUniform:output:0(lstm_1/dropout_1/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_1/GreaterEqual
lstm_1/dropout_1/CastCast!lstm_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_1/CastЂ
lstm_1/dropout_1/Mul_1Mullstm_1/dropout_1/Mul:z:0lstm_1/dropout_1/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_1/Mul_1u
lstm_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
lstm_1/dropout_2/ConstЅ
lstm_1/dropout_2/MulMullstm_1/ones_like:output:0lstm_1/dropout_2/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_2/Muly
lstm_1/dropout_2/ShapeShapelstm_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_1/dropout_2/Shapeђ
-lstm_1/dropout_2/random_uniform/RandomUniformRandomUniformlstm_1/dropout_2/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ПЇё2/
-lstm_1/dropout_2/random_uniform/RandomUniform
lstm_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2!
lstm_1/dropout_2/GreaterEqual/yц
lstm_1/dropout_2/GreaterEqualGreaterEqual6lstm_1/dropout_2/random_uniform/RandomUniform:output:0(lstm_1/dropout_2/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_2/GreaterEqual
lstm_1/dropout_2/CastCast!lstm_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_2/CastЂ
lstm_1/dropout_2/Mul_1Mullstm_1/dropout_2/Mul:z:0lstm_1/dropout_2/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_2/Mul_1u
lstm_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
lstm_1/dropout_3/ConstЅ
lstm_1/dropout_3/MulMullstm_1/ones_like:output:0lstm_1/dropout_3/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_3/Muly
lstm_1/dropout_3/ShapeShapelstm_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_1/dropout_3/Shapeђ
-lstm_1/dropout_3/random_uniform/RandomUniformRandomUniformlstm_1/dropout_3/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЉЏд2/
-lstm_1/dropout_3/random_uniform/RandomUniform
lstm_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2!
lstm_1/dropout_3/GreaterEqual/yц
lstm_1/dropout_3/GreaterEqualGreaterEqual6lstm_1/dropout_3/random_uniform/RandomUniform:output:0(lstm_1/dropout_3/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_3/GreaterEqual
lstm_1/dropout_3/CastCast!lstm_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_3/CastЂ
lstm_1/dropout_3/Mul_1Mullstm_1/dropout_3/Mul:z:0lstm_1/dropout_3/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_1/dropout_3/Mul_1w

lstm_1/mulMulinputslstm_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ2

lstm_1/mul
lstm_1/Read/ReadVariableOpReadVariableOp#lstm_1_read_readvariableop_resource*
_output_shapes
:	*
dtype02
lstm_1/Read/ReadVariableOp|
lstm_1/IdentityIdentity"lstm_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
lstm_1/IdentityЃ
lstm_1/Read_1/ReadVariableOpReadVariableOp%lstm_1_read_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_1/Read_1/ReadVariableOp
lstm_1/Identity_1Identity$lstm_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2
lstm_1/Identity_1
lstm_1/Read_2/ReadVariableOpReadVariableOp%lstm_1_read_2_readvariableop_resource*
_output_shapes	
:*
dtype02
lstm_1/Read_2/ReadVariableOp~
lstm_1/Identity_2Identity$lstm_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
lstm_1/Identity_2§
lstm_1/PartitionedCallPartitionedCalllstm_1/mul:z:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/Identity:output:0lstm_1/Identity_1:output:0lstm_1/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_367682
lstm_1/PartitionedCallЅ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_1/MatMul/ReadVariableOpЄ
dense_1/MatMulMatMullstm_1/PartitionedCall:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityъ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^lstm_1/Read/ReadVariableOp^lstm_1/Read_1/ReadVariableOp^lstm_1/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
lstm_1/Read/ReadVariableOplstm_1/Read/ReadVariableOp2<
lstm_1/Read_1/ReadVariableOplstm_1/Read_1/ReadVariableOp2<
lstm_1/Read_2/ReadVariableOplstm_1/Read_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Еф
ё
9__inference___backward_gpu_lstm_with_fallback_35290_35466
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*щ
_input_shapesз
д:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_35171045-1986-4dfc-a1c5-453e4b0403a1*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_35465*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
иA
П
__inference_standard_lstm_33820

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_33735*
condR
while_cond_33734*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_fa6279d1-5931-40c0-8d05-abc7ddf33013*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
T
Ѓ
&__forward_gpu_lstm_with_fallback_37513

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_f2e19ccd-dbe2-41f6-9940-c598490611a3*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_37338_37514*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
H
Ы
(__inference_gpu_lstm_with_fallback_38247

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_449c10a1-a4f1-433f-8913-ab2f7ef4bd54*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
яS
Ѓ
&__forward_gpu_lstm_with_fallback_36561

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_9f30f761-f4f2-4daa-8648-c54f1c55115d*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_36386_36562*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
я,
Ю
while_body_36683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
Ќ	
М
while_cond_33241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_33241___redundant_placeholder03
/while_while_cond_33241___redundant_placeholder13
/while_while_cond_33241___redundant_placeholder23
/while_while_cond_33241___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Чi

!__inference__traced_restore_39137
file_prefix1
assignvariableop_dense_1_kernel:@-
assignvariableop_1_dense_1_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: ?
,assignvariableop_7_lstm_1_lstm_cell_1_kernel:	I
6assignvariableop_8_lstm_1_lstm_cell_1_recurrent_kernel:	@9
*assignvariableop_9_lstm_1_lstm_cell_1_bias:	#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: ;
)assignvariableop_14_adam_dense_1_kernel_m:@5
'assignvariableop_15_adam_dense_1_bias_m:G
4assignvariableop_16_adam_lstm_1_lstm_cell_1_kernel_m:	Q
>assignvariableop_17_adam_lstm_1_lstm_cell_1_recurrent_kernel_m:	@A
2assignvariableop_18_adam_lstm_1_lstm_cell_1_bias_m:	;
)assignvariableop_19_adam_dense_1_kernel_v:@5
'assignvariableop_20_adam_dense_1_bias_v:G
4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_v:	Q
>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_v:	@A
2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_v:	
identity_25ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ў
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*К
valueАB­B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesР
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЈ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2Ё
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѓ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѓ
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ђ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Њ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Б
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_1_lstm_cell_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Л
AssignVariableOp_8AssignVariableOp6assignvariableop_8_lstm_1_lstm_cell_1_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Џ
AssignVariableOp_9AssignVariableOp*assignvariableop_9_lstm_1_lstm_cell_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ё
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ё
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ѓ
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ѓ
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Б
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_1_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Џ
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_1_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16М
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_lstm_1_lstm_cell_1_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ц
AssignVariableOp_17AssignVariableOp>assignvariableop_17_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18К
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_lstm_1_lstm_cell_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Б
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Џ
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21М
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ц
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23К
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpю
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24f
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_25ж
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
иA
П
__inference_standard_lstm_37714

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_37629*
condR
while_cond_37628*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_c9b75d52-be26-4681-9a67-76aa9bce6c38*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
H
Ы
(__inference_gpu_lstm_with_fallback_32972

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЌ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:2

concat_1ж
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_5bee67e9-e154-42bb-9f0d-32627fb302ad*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
я,
Ю
while_body_36206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
	
№
,__inference_sequential_1_layer_call_fn_35506
input_2
unknown:	
	unknown_0:	@
	unknown_1:	
	unknown_2:@
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_354932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_2
Ќх
ё
9__inference___backward_gpu_lstm_with_fallback_37338_37514
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesл
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationш
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeЖ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationџ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesђ
я:џџџџџџџџџ@:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџџџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_f2e19ccd-dbe2-41f6-9940-c598490611a3*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_37513*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: ::6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
:::
6
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЁA
П
__inference_standard_lstm_38153

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_38068*
condR
while_cond_38067*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_449c10a1-a4f1-433f-8913-ab2f7ef4bd54*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ЖK
Л
A__inference_lstm_1_layer_call_and_return_conditional_losses_38897

inputs/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeз
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ы2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeн
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Ья2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yЪ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeн
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2іФб2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yЪ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeн
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2§вс2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yЪ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_3/Mul_1b
mulMulinputsdropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Х
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_386242
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
T
Ѓ
&__forward_gpu_lstm_with_fallback_33597

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_1698de91-63af-4a20-b00e-203f0b00747f*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_33422_33598*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ќ	
М
while_cond_36682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_36682___redundant_placeholder03
/while_while_cond_36682___redundant_placeholder13
/while_while_cond_36682___redundant_placeholder23
/while_while_cond_36682___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Є

ѓ
B__inference_dense_1_layer_call_and_return_conditional_losses_38951

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Еф
ё
9__inference___backward_gpu_lstm_with_fallback_35822_35998
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ѓ
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/ShapeН
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ25
3gradients/strided_slice_grad/StridedSliceGrad/beginА
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesв
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationп
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2&
$gradients/transpose_9_grad/transpose
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeЦ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2 
gradients/Squeeze_grad/Reshape
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/ShapeЬ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2"
 gradients/Squeeze_1_grad/Reshape
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:џџџџџџџџџ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like­
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropФ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationі
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2$
"gradients/transpose_grad/transpose
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!gradients/ExpandDims_grad/Reshape
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape№
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/RankЙ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_1_grad/Shape
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_1
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_2
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_3
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_4
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_5
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_6
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_7
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15 
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_1_grad/Slice
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_1
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_2
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:2!
gradients/concat_1_grad/Slice_3
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_4
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_5
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_6
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: 2!
gradients/concat_1_grad/Slice_7
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/ShapeУ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/Reshape
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/ShapeЫ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/Reshape
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/ShapeЫ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/Reshape
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/ShapeЫ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/Reshape
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/ShapeЫ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/Reshape
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/ShapeЫ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/Reshape
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/ShapeЫ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/Reshape
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/ShapeЫ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshape
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeЧ
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshape
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeЧ
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshape
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/ShapeЫ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshape
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/ShapeЫ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshape
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/ShapeЫ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshape
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/ShapeЫ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshape
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/ShapeЫ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshape
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/ShapeЫ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/ReshapeЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationн
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transposeЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationп
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transposeЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationп
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transposeЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationп
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transposeЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationп
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transposeЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationп
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transposeЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationп
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transposeЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationп
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transpose
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:2
gradients/split_2_grad/concatЮ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_grad/concatж
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/RankЏ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1№
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Sliceї
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:2
gradients/concat_grad/Slice_1~
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*щ
_input_shapesз
д:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: :џџџџџџџџџ@::џџџџџџџџџ@:џџџџџџџџџ@::џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::џџџџџџџџџ@:џџџџџџџџџ@: ::::::::: : : : *=
api_implements+)lstm_c9be1ecf-2399-4652-af14-301adb8d8a72*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_35997*
go_backwards( *

time_major( :- )
'
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :1-
+
_output_shapes
:џџџџџџџџџ@: 

_output_shapes
::1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:	

_output_shapes
::1
-
+
_output_shapes
:џџџџџџџџџ:1-
+
_output_shapes
:џџџџџџџџџ@:1-
+
_output_shapes
:џџџџџџџџџ@:"

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Є

ѓ
B__inference_dense_1_layer_call_and_return_conditional_losses_35486

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ЕK
Л
A__inference_lstm_1_layer_call_and_return_conditional_losses_36000

inputs/
read_readvariableop_resource:	1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3ЂRead/ReadVariableOpЂRead_1/ReadVariableOpЂRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeж
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2В№?2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeн
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2џЗх2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yЪ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeн
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2пЮЌ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yЪ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeн
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2хЎй2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yЪ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_3/Mul_1b
mulMulinputsdropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ2
mul
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2

Identity
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2

Identity_1
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2

Identity_2Х
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_357272
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
яS
Ѓ
&__forward_gpu_lstm_with_fallback_33148

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1к
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_5bee67e9-e154-42bb-9f0d-32627fb302ad*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_32973_33149*
go_backwards( *

time_major( :S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
T
Ѓ
&__forward_gpu_lstm_with_fallback_34090

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЁ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЈ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: 2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1у
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:џџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2і
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_fa6279d1-5931-40c0-8d05-abc7ddf33013*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_33915_34091*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
я
,__inference_sequential_1_layer_call_fn_37077

inputs
unknown:	
	unknown_0:	@
	unknown_1:	
	unknown_2:@
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_360422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я,
Ю
while_body_35110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЂ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/MatMul_1
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	while/add
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimз
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/mul_2г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	@:!


_output_shapes	
:
Ќ	
М
while_cond_35641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_35641___redundant_placeholder03
/while_while_cond_35641___redundant_placeholder13
/while_while_cond_35641___redundant_placeholder23
/while_while_cond_35641___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
э

'__inference_dense_1_layer_call_fn_38960

inputs
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_354862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
иA
П
__inference_standard_lstm_37243

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeА
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ќ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeЖ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterН
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_37158*
condR
while_cond_37157*b
output_shapesQ
O: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :	:	@:*
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:	:	@:*=
api_implements+)lstm_f2e19ccd-dbe2-41f6-9940-c598490611a3*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ў
serving_default
?
input_24
serving_default_input_2:0џџџџџџџџџ;
dense_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ЏX
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
K_default_save_signature
*L&call_and_return_all_conditional_losses
M__call__"
_tf_keras_sequential
У
	cell


state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*N&call_and_return_all_conditional_losses
O__call__"
_tf_keras_rnn_layer
Л

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*P&call_and_return_all_conditional_losses
Q__call__"
_tf_keras_layer
­
iter

beta_1

beta_2
	decay
learning_ratemAmBmCmDmEvFvGvHvIvJ"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
Ъ
	variables
layer_regularization_losses
regularization_losses

layers
metrics
 non_trainable_variables
trainable_variables
!layer_metrics
M__call__
K_default_save_signature
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
,
Rserving_default"
signature_map
с
"
state_size

kernel
recurrent_kernel
bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
*S&call_and_return_all_conditional_losses
T__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
Й
	variables
'layer_regularization_losses
regularization_losses

(layers
trainable_variables
)metrics
*non_trainable_variables

+states
,layer_metrics
O__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_1/kernel
:2dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
	variables
-layer_regularization_losses
regularization_losses

.layers
/metrics
0non_trainable_variables
trainable_variables
1layer_metrics
Q__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	2lstm_1/lstm_cell_1/kernel
6:4	@2#lstm_1/lstm_cell_1/recurrent_kernel
&:$2lstm_1/lstm_cell_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
­
#	variables
4layer_regularization_losses
$regularization_losses

5layers
6metrics
7non_trainable_variables
%trainable_variables
8layer_metrics
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
	0"
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
N
	9total
	:count
;	variables
<	keras_api"
_tf_keras_metric
N
	=total
	>count
?	variables
@	keras_api"
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
:  (2total
:  (2count
.
90
:1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
.
=0
>1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
%:#@2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
1:/	2 Adam/lstm_1/lstm_cell_1/kernel/m
;:9	@2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)2Adam/lstm_1/lstm_cell_1/bias/m
%:#@2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
1:/	2 Adam/lstm_1/lstm_cell_1/kernel/v
;:9	@2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)2Adam/lstm_1/lstm_cell_1/bias/v
ЫBШ
 __inference__wrapped_model_33157input_2"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_36570
G__inference_sequential_1_layer_call_and_return_conditional_losses_37047
G__inference_sequential_1_layer_call_and_return_conditional_losses_36086
G__inference_sequential_1_layer_call_and_return_conditional_losses_36102Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ў2ћ
,__inference_sequential_1_layer_call_fn_35506
,__inference_sequential_1_layer_call_fn_37062
,__inference_sequential_1_layer_call_fn_37077
,__inference_sequential_1_layer_call_fn_36070Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ч2ф
A__inference_lstm_1_layer_call_and_return_conditional_losses_37516
A__inference_lstm_1_layer_call_and_return_conditional_losses_37987
A__inference_lstm_1_layer_call_and_return_conditional_losses_38426
A__inference_lstm_1_layer_call_and_return_conditional_losses_38897е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ћ2ј
&__inference_lstm_1_layer_call_fn_38908
&__inference_lstm_1_layer_call_fn_38919
&__inference_lstm_1_layer_call_fn_38930
&__inference_lstm_1_layer_call_fn_38941е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_38951Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_dense_1_layer_call_fn_38960Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЪBЧ
#__inference_signature_wrapper_36125input_2"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ф2СО
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ф2СО
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 __inference__wrapped_model_33157p4Ђ1
*Ђ'
%"
input_2џџџџџџџџџ
Њ "1Њ.
,
dense_1!
dense_1џџџџџџџџџЂ
B__inference_dense_1_layer_call_and_return_conditional_losses_38951\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ
 z
'__inference_dense_1_layer_call_fn_38960O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџТ
A__inference_lstm_1_layer_call_and_return_conditional_losses_37516}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 Т
A__inference_lstm_1_layer_call_and_return_conditional_losses_37987}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 В
A__inference_lstm_1_layer_call_and_return_conditional_losses_38426m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 В
A__inference_lstm_1_layer_call_and_return_conditional_losses_38897m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 
&__inference_lstm_1_layer_call_fn_38908pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ@
&__inference_lstm_1_layer_call_fn_38919pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ@
&__inference_lstm_1_layer_call_fn_38930`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ@
&__inference_lstm_1_layer_call_fn_38941`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ@З
G__inference_sequential_1_layer_call_and_return_conditional_losses_36086l<Ђ9
2Ђ/
%"
input_2џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 З
G__inference_sequential_1_layer_call_and_return_conditional_losses_36102l<Ђ9
2Ђ/
%"
input_2џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ж
G__inference_sequential_1_layer_call_and_return_conditional_losses_36570k;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ж
G__inference_sequential_1_layer_call_and_return_conditional_losses_37047k;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
,__inference_sequential_1_layer_call_fn_35506_<Ђ9
2Ђ/
%"
input_2џџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_36070_<Ђ9
2Ђ/
%"
input_2џџџџџџџџџ
p

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_37062^;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_37077^;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЂ
#__inference_signature_wrapper_36125{?Ђ<
Ђ 
5Њ2
0
input_2%"
input_2џџџџџџџџџ"1Њ.
,
dense_1!
dense_1џџџџџџџџџ