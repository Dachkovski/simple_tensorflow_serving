Ѕѓ6
ёТ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
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
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8И4
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

lstm_2/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x**
shared_namelstm_2/lstm_cell_3/kernel

-lstm_2/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_3/kernel*
_output_shapes

:x*
dtype0
Ђ
#lstm_2/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*4
shared_name%#lstm_2/lstm_cell_3/recurrent_kernel

7lstm_2/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_3/recurrent_kernel*
_output_shapes

:x*
dtype0

lstm_2/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*(
shared_namelstm_2/lstm_cell_3/bias

+lstm_2/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_3/bias*
_output_shapes
:x*
dtype0

lstm_3/lstm_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x**
shared_namelstm_3/lstm_cell_4/kernel

-lstm_3/lstm_cell_4/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_4/kernel*
_output_shapes

:x*
dtype0
Ђ
#lstm_3/lstm_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*4
shared_name%#lstm_3/lstm_cell_4/recurrent_kernel

7lstm_3/lstm_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_3/lstm_cell_4/recurrent_kernel*
_output_shapes

:x*
dtype0

lstm_3/lstm_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*(
shared_namelstm_3/lstm_cell_4/bias

+lstm_3/lstm_cell_4/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_4/bias*
_output_shapes
:x*
dtype0

output/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	№**
shared_nameoutput/lstm_cell_5/kernel

-output/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOpoutput/lstm_cell_5/kernel*
_output_shapes
:	№*
dtype0
Ѓ
#output/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<№*4
shared_name%#output/lstm_cell_5/recurrent_kernel

7output/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#output/lstm_cell_5/recurrent_kernel*
_output_shapes
:	<№*
dtype0

output/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:№*(
shared_nameoutput/lstm_cell_5/bias

+output/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOpoutput/lstm_cell_5/bias*
_output_shapes	
:№*
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

 Adam/lstm_2/lstm_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*1
shared_name" Adam/lstm_2/lstm_cell_3/kernel/m

4Adam/lstm_2/lstm_cell_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_3/kernel/m*
_output_shapes

:x*
dtype0
А
*Adam/lstm_2/lstm_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*;
shared_name,*Adam/lstm_2/lstm_cell_3/recurrent_kernel/m
Љ
>Adam/lstm_2/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_3/recurrent_kernel/m*
_output_shapes

:x*
dtype0

Adam/lstm_2/lstm_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*/
shared_name Adam/lstm_2/lstm_cell_3/bias/m

2Adam/lstm_2/lstm_cell_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_3/bias/m*
_output_shapes
:x*
dtype0

 Adam/lstm_3/lstm_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*1
shared_name" Adam/lstm_3/lstm_cell_4/kernel/m

4Adam/lstm_3/lstm_cell_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_4/kernel/m*
_output_shapes

:x*
dtype0
А
*Adam/lstm_3/lstm_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*;
shared_name,*Adam/lstm_3/lstm_cell_4/recurrent_kernel/m
Љ
>Adam/lstm_3/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_4/recurrent_kernel/m*
_output_shapes

:x*
dtype0

Adam/lstm_3/lstm_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*/
shared_name Adam/lstm_3/lstm_cell_4/bias/m

2Adam/lstm_3/lstm_cell_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_4/bias/m*
_output_shapes
:x*
dtype0

 Adam/output/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	№*1
shared_name" Adam/output/lstm_cell_5/kernel/m

4Adam/output/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/output/lstm_cell_5/kernel/m*
_output_shapes
:	№*
dtype0
Б
*Adam/output/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<№*;
shared_name,*Adam/output/lstm_cell_5/recurrent_kernel/m
Њ
>Adam/output/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/output/lstm_cell_5/recurrent_kernel/m*
_output_shapes
:	<№*
dtype0

Adam/output/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:№*/
shared_name Adam/output/lstm_cell_5/bias/m

2Adam/output/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/lstm_cell_5/bias/m*
_output_shapes	
:№*
dtype0

 Adam/lstm_2/lstm_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*1
shared_name" Adam/lstm_2/lstm_cell_3/kernel/v

4Adam/lstm_2/lstm_cell_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_3/kernel/v*
_output_shapes

:x*
dtype0
А
*Adam/lstm_2/lstm_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*;
shared_name,*Adam/lstm_2/lstm_cell_3/recurrent_kernel/v
Љ
>Adam/lstm_2/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_3/recurrent_kernel/v*
_output_shapes

:x*
dtype0

Adam/lstm_2/lstm_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*/
shared_name Adam/lstm_2/lstm_cell_3/bias/v

2Adam/lstm_2/lstm_cell_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_3/bias/v*
_output_shapes
:x*
dtype0

 Adam/lstm_3/lstm_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*1
shared_name" Adam/lstm_3/lstm_cell_4/kernel/v

4Adam/lstm_3/lstm_cell_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_4/kernel/v*
_output_shapes

:x*
dtype0
А
*Adam/lstm_3/lstm_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*;
shared_name,*Adam/lstm_3/lstm_cell_4/recurrent_kernel/v
Љ
>Adam/lstm_3/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_4/recurrent_kernel/v*
_output_shapes

:x*
dtype0

Adam/lstm_3/lstm_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*/
shared_name Adam/lstm_3/lstm_cell_4/bias/v

2Adam/lstm_3/lstm_cell_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_4/bias/v*
_output_shapes
:x*
dtype0

 Adam/output/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	№*1
shared_name" Adam/output/lstm_cell_5/kernel/v

4Adam/output/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/output/lstm_cell_5/kernel/v*
_output_shapes
:	№*
dtype0
Б
*Adam/output/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<№*;
shared_name,*Adam/output/lstm_cell_5/recurrent_kernel/v
Њ
>Adam/output/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/output/lstm_cell_5/recurrent_kernel/v*
_output_shapes
:	<№*
dtype0

Adam/output/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:№*/
shared_name Adam/output/lstm_cell_5/bias/v

2Adam/output/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/lstm_cell_5/bias/v*
_output_shapes	
:№*
dtype0

NoOpNoOp
>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*к=
valueа=BЭ= BЦ=

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
l
 cell
!
state_spec
"regularization_losses
#trainable_variables
$	variables
%	keras_api
я
&iter

'beta_1

(beta_2
	)decay
*learning_rate+m{,m|-m}.m~/m0m1m2m3m+v,v-v.v/v0v1v2v3v
 
?
+0
,1
-2
.3
/4
05
16
27
38
?
+0
,1
-2
.3
/4
05
16
27
38
­
4metrics
regularization_losses
5layer_regularization_losses
6layer_metrics
trainable_variables
7non_trainable_variables
		variables

8layers
 
~

+kernel
,recurrent_kernel
-bias
9regularization_losses
:trainable_variables
;	variables
<	keras_api
 
 

+0
,1
-2

+0
,1
-2
Й
=metrics
regularization_losses
>layer_regularization_losses
?layer_metrics

@states
trainable_variables
Anon_trainable_variables
	variables

Blayers
 
 
 
­
Cmetrics
regularization_losses
Dlayer_regularization_losses
Elayer_metrics
trainable_variables
Fnon_trainable_variables
	variables

Glayers
~

.kernel
/recurrent_kernel
0bias
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
 
 

.0
/1
02

.0
/1
02
Й
Lmetrics
regularization_losses
Mlayer_regularization_losses
Nlayer_metrics

Ostates
trainable_variables
Pnon_trainable_variables
	variables

Qlayers
 
 
 
­
Rmetrics
regularization_losses
Slayer_regularization_losses
Tlayer_metrics
trainable_variables
Unon_trainable_variables
	variables

Vlayers
~

1kernel
2recurrent_kernel
3bias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
 
 

10
21
32

10
21
32
Й
[metrics
"regularization_losses
\layer_regularization_losses
]layer_metrics

^states
#trainable_variables
_non_trainable_variables
$	variables

`layers
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
_]
VARIABLE_VALUElstm_2/lstm_cell_3/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_2/lstm_cell_3/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_2/lstm_cell_3/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_3/lstm_cell_4/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_3/lstm_cell_4/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_3/lstm_cell_4/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEoutput/lstm_cell_5/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#output/lstm_cell_5/recurrent_kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEoutput/lstm_cell_5/bias0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE

a0
b1
 
 
 
#
0
1
2
3
4
 

+0
,1
-2

+0
,1
-2
­
cmetrics
9regularization_losses
dlayer_regularization_losses
elayer_metrics
:trainable_variables
fnon_trainable_variables
;	variables

glayers
 
 
 
 
 

0
 
 
 
 
 
 

.0
/1
02

.0
/1
02
­
hmetrics
Hregularization_losses
ilayer_regularization_losses
jlayer_metrics
Itrainable_variables
knon_trainable_variables
J	variables

llayers
 
 
 
 
 

0
 
 
 
 
 
 

10
21
32

10
21
32
­
mmetrics
Wregularization_losses
nlayer_regularization_losses
olayer_metrics
Xtrainable_variables
pnon_trainable_variables
Y	variables

qlayers
 
 
 
 
 

 0
4
	rtotal
	scount
t	variables
u	keras_api
D
	vtotal
	wcount
x
_fn_kwargs
y	variables
z	keras_api
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

r0
s1

t	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

y	variables

VARIABLE_VALUE Adam/lstm_2/lstm_cell_3/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_3/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_3/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_3/lstm_cell_4/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_3/lstm_cell_4/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_3/lstm_cell_4/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/output/lstm_cell_5/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/output/lstm_cell_5/recurrent_kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/output/lstm_cell_5/bias/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_2/lstm_cell_3/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_3/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_3/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_3/lstm_cell_4/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_3/lstm_cell_4/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_3/lstm_cell_4/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/output/lstm_cell_5/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/output/lstm_cell_5/recurrent_kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/output/lstm_cell_5/bias/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ<*
dtype0* 
shape:џџџџџџџџџ<
Ь
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputlstm_2/lstm_cell_3/kernel#lstm_2/lstm_cell_3/recurrent_kernellstm_2/lstm_cell_3/biaslstm_3/lstm_cell_4/kernel#lstm_3/lstm_cell_4/recurrent_kernellstm_3/lstm_cell_4/biasoutput/lstm_cell_5/kernel#output/lstm_cell_5/recurrent_kerneloutput/lstm_cell_5/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_13584
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_2/lstm_cell_3/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_3/bias/Read/ReadVariableOp-lstm_3/lstm_cell_4/kernel/Read/ReadVariableOp7lstm_3/lstm_cell_4/recurrent_kernel/Read/ReadVariableOp+lstm_3/lstm_cell_4/bias/Read/ReadVariableOp-output/lstm_cell_5/kernel/Read/ReadVariableOp7output/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp+output/lstm_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_3/kernel/m/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_3/bias/m/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_4/kernel/m/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_4/bias/m/Read/ReadVariableOp4Adam/output/lstm_cell_5/kernel/m/Read/ReadVariableOp>Adam/output/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp2Adam/output/lstm_cell_5/bias/m/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_3/kernel/v/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_3/bias/v/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_4/kernel/v/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_4/bias/v/Read/ReadVariableOp4Adam/output/lstm_cell_5/kernel/v/Read/ReadVariableOp>Adam/output/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp2Adam/output/lstm_cell_5/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
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
__inference__traced_save_17003
Н

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_2/lstm_cell_3/kernel#lstm_2/lstm_cell_3/recurrent_kernellstm_2/lstm_cell_3/biaslstm_3/lstm_cell_4/kernel#lstm_3/lstm_cell_4/recurrent_kernellstm_3/lstm_cell_4/biasoutput/lstm_cell_5/kernel#output/lstm_cell_5/recurrent_kerneloutput/lstm_cell_5/biastotalcounttotal_1count_1 Adam/lstm_2/lstm_cell_3/kernel/m*Adam/lstm_2/lstm_cell_3/recurrent_kernel/mAdam/lstm_2/lstm_cell_3/bias/m Adam/lstm_3/lstm_cell_4/kernel/m*Adam/lstm_3/lstm_cell_4/recurrent_kernel/mAdam/lstm_3/lstm_cell_4/bias/m Adam/output/lstm_cell_5/kernel/m*Adam/output/lstm_cell_5/recurrent_kernel/mAdam/output/lstm_cell_5/bias/m Adam/lstm_2/lstm_cell_3/kernel/v*Adam/lstm_2/lstm_cell_3/recurrent_kernel/vAdam/lstm_2/lstm_cell_3/bias/v Adam/lstm_3/lstm_cell_4/kernel/v*Adam/lstm_3/lstm_cell_4/recurrent_kernel/vAdam/lstm_3/lstm_cell_4/bias/v Adam/output/lstm_cell_5/kernel/v*Adam/output/lstm_cell_5/recurrent_kernel/vAdam/output/lstm_cell_5/bias/v*0
Tin)
'2%*
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
!__inference__traced_restore_17121Го2
з
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_15906

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ь$

while_body_11533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_4_11557_0
while_lstm_cell_4_11559_0
while_lstm_cell_4_11561_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_4_11557
while_lstm_cell_4_11559
while_lstm_cell_4_11561Ђ)while/lstm_cell_4/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemз
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_11557_0while_lstm_cell_4_11559_0while_lstm_cell_4_11561_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_112062+
)while/lstm_cell_4/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_4_11557while_lstm_cell_4_11557_0"4
while_lstm_cell_4_11559while_lstm_cell_4_11559_0"4
while_lstm_cell_4_11561while_lstm_cell_4_11561_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Л
л
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_16805

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	№*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ<2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ<:џџџџџџџџџ<:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/1
ьQ
Ы
__inference__traced_save_17003
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_2_lstm_cell_3_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_3_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_3_bias_read_readvariableop8
4savev2_lstm_3_lstm_cell_4_kernel_read_readvariableopB
>savev2_lstm_3_lstm_cell_4_recurrent_kernel_read_readvariableop6
2savev2_lstm_3_lstm_cell_4_bias_read_readvariableop8
4savev2_output_lstm_cell_5_kernel_read_readvariableopB
>savev2_output_lstm_cell_5_recurrent_kernel_read_readvariableop6
2savev2_output_lstm_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_3_kernel_m_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_3_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_3_bias_m_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_4_kernel_m_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_4_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_4_bias_m_read_readvariableop?
;savev2_adam_output_lstm_cell_5_kernel_m_read_readvariableopI
Esavev2_adam_output_lstm_cell_5_recurrent_kernel_m_read_readvariableop=
9savev2_adam_output_lstm_cell_5_bias_m_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_3_kernel_v_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_3_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_3_bias_v_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_4_kernel_v_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_4_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_4_bias_v_read_readvariableop?
;savev2_adam_output_lstm_cell_5_kernel_v_read_readvariableopI
Esavev2_adam_output_lstm_cell_5_recurrent_kernel_v_read_readvariableop=
9savev2_adam_output_lstm_cell_5_bias_v_read_readvariableop
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
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ў
valueЄBЁ%B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesв
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЎ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_2_lstm_cell_3_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_3_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_3_bias_read_readvariableop4savev2_lstm_3_lstm_cell_4_kernel_read_readvariableop>savev2_lstm_3_lstm_cell_4_recurrent_kernel_read_readvariableop2savev2_lstm_3_lstm_cell_4_bias_read_readvariableop4savev2_output_lstm_cell_5_kernel_read_readvariableop>savev2_output_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_output_lstm_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_lstm_2_lstm_cell_3_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_3_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_3_bias_m_read_readvariableop;savev2_adam_lstm_3_lstm_cell_4_kernel_m_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_4_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_3_lstm_cell_4_bias_m_read_readvariableop;savev2_adam_output_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_output_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_output_lstm_cell_5_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_3_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_3_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_3_bias_v_read_readvariableop;savev2_adam_lstm_3_lstm_cell_4_kernel_v_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_4_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_3_lstm_cell_4_bias_v_read_readvariableop;savev2_adam_output_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_output_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_output_lstm_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : : : : :x:x:x:x:x:x:	№:	<№:№: : : : :x:x:x:x:x:x:	№:	<№:№:x:x:x:x:x:x:	№:	<№:№: 2(
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
: :$ 

_output_shapes

:x:$ 

_output_shapes

:x: 

_output_shapes
:x:$	 

_output_shapes

:x:$
 

_output_shapes

:x: 

_output_shapes
:x:%!

_output_shapes
:	№:%!

_output_shapes
:	<№:!

_output_shapes	
:№:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$ 

_output_shapes

:x: 

_output_shapes
:x:$ 

_output_shapes

:x:$ 

_output_shapes

:x: 

_output_shapes
:x:%!

_output_shapes
:	№:%!

_output_shapes
:	<№:!

_output_shapes	
:№:$ 

_output_shapes

:x:$ 

_output_shapes

:x: 

_output_shapes
:x:$ 

_output_shapes

:x:$  

_output_shapes

:x: !

_output_shapes
:x:%"!

_output_shapes
:	№:%#!

_output_shapes
:	<№:!$

_output_shapes	
:№:%

_output_shapes
: 
ОZ
ъ
A__inference_lstm_3_layer_call_and_return_conditional_losses_13027

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЉ
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMulЗ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpЅ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/addА
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЈ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_2
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_1
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_3Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_3
lstm_cell_4/Sigmoid_4Sigmoidlstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_4
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_3:y:0lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_12942*
condR
while_cond_12941*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Ы
ъ
,__inference_sequential_1_layer_call_fn_14527

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_134802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Д
л
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_16638

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
ЁB
є
while_body_12942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resourceЂ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpг
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMulЫ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpМ
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMul_1Г
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/addФ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpР
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_1
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_2Ћ
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_1Ѕ
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_3Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_3
while/lstm_cell_4/Sigmoid_4Sigmoidwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_4­
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_3:y:0while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Ш
щ
,__inference_sequential_1_layer_call_fn_13551	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_135302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ<

_user_specified_nameinput
З
Ы
+__inference_lstm_cell_5_layer_call_fn_16872

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_118492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ<:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/1
Б

&__inference_lstm_3_layer_call_fn_15889
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_117342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0


&__inference_lstm_2_layer_call_fn_15206

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_126622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ЈB
є
while_body_16312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resourceЂ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpд
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_1
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_2Ћ
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_1Ѕ
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_3
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_4­
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
ОZ
ъ
A__inference_lstm_2_layer_call_and_return_conditional_losses_15031

inputs.
*lstm_cell_3_matmul_readvariableop_resource0
,lstm_cell_3_matmul_1_readvariableop_resource/
+lstm_cell_3_biasadd_readvariableop_resource
identityЂ"lstm_cell_3/BiasAdd/ReadVariableOpЂ!lstm_cell_3/MatMul/ReadVariableOpЂ#lstm_cell_3/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOpЉ
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMulЗ
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOpЅ
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMul_1
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/addА
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOpЈ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/BiasAddh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimя
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_3/split
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_2
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_1
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_3Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_3
lstm_cell_3/Sigmoid_4Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_4
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_3:y:0lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_14946*
condR
while_cond_14945*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Д
л
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_16605

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
І
О
while_cond_12941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12941___redundant_placeholder03
/while_while_cond_12941___redundant_placeholder13
/while_while_cond_12941___redundant_placeholder23
/while_while_cond_12941___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Ќ
й
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_10629

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
І
О
while_cond_16464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16464___redundant_placeholder03
/while_while_cond_16464___redundant_placeholder13
/while_while_cond_16464___redundant_placeholder23
/while_while_cond_16464___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
нL
д	
lstm_2_while_body_14119*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0?
;lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0>
:lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor;
7lstm_2_while_lstm_cell_3_matmul_readvariableop_resource=
9lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource<
8lstm_2_while_lstm_cell_3_biasadd_readvariableop_resourceЂ/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpЂ.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpЂ0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpб
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItemк
.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype020
.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpя
lstm_2/while/lstm_cell_3/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2!
lstm_2/while/lstm_cell_3/MatMulр
0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype022
0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpи
!lstm_2/while/lstm_cell_3/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2#
!lstm_2/while/lstm_cell_3/MatMul_1Я
lstm_2/while/lstm_cell_3/addAddV2)lstm_2/while/lstm_cell_3/MatMul:product:0+lstm_2/while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/while/lstm_cell_3/addй
/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype021
/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpм
 lstm_2/while/lstm_cell_3/BiasAddBiasAdd lstm_2/while/lstm_cell_3/add:z:07lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2"
 lstm_2/while/lstm_cell_3/BiasAdd
lstm_2/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_2/while/lstm_cell_3/Const
(lstm_2/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_3/split/split_dimЃ
lstm_2/while/lstm_cell_3/splitSplit1lstm_2/while/lstm_cell_3/split/split_dim:output:0)lstm_2/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2 
lstm_2/while/lstm_cell_3/splitЊ
 lstm_2/while/lstm_cell_3/SigmoidSigmoid'lstm_2/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 lstm_2/while/lstm_cell_3/SigmoidЎ
"lstm_2/while/lstm_cell_3/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_1Й
lstm_2/while/lstm_cell_3/mulMul&lstm_2/while/lstm_cell_3/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/while/lstm_cell_3/mulЎ
"lstm_2/while/lstm_cell_3/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_2Ч
lstm_2/while/lstm_cell_3/mul_1Mul$lstm_2/while/lstm_cell_3/Sigmoid:y:0&lstm_2/while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_2/while/lstm_cell_3/mul_1С
lstm_2/while/lstm_cell_3/add_1AddV2 lstm_2/while/lstm_cell_3/mul:z:0"lstm_2/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_2/while/lstm_cell_3/add_1Ў
"lstm_2/while/lstm_cell_3/Sigmoid_3Sigmoid'lstm_2/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_3Љ
"lstm_2/while/lstm_cell_3/Sigmoid_4Sigmoid"lstm_2/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_4Щ
lstm_2/while/lstm_cell_3/mul_2Mul&lstm_2/while/lstm_cell_3/Sigmoid_3:y:0&lstm_2/while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_2/while/lstm_cell_3/mul_2
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/IdentityЃ
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations0^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1
lstm_2/while/Identity_2Identitylstm_2/while/add:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2И
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3Њ
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_3/mul_2:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/while/Identity_4Њ
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_3/add_1:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_3_matmul_readvariableop_resource9lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0"Ф
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2b
/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
І
О
while_cond_10922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_10922___redundant_placeholder03
/while_while_cond_10922___redundant_placeholder13
/while_while_cond_10922___redundant_placeholder23
/while_while_cond_10922___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
нL
д	
lstm_2_while_body_13652*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0?
;lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0>
:lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor;
7lstm_2_while_lstm_cell_3_matmul_readvariableop_resource=
9lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource<
8lstm_2_while_lstm_cell_3_biasadd_readvariableop_resourceЂ/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpЂ.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpЂ0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpб
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItemк
.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype020
.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpя
lstm_2/while/lstm_cell_3/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2!
lstm_2/while/lstm_cell_3/MatMulр
0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype022
0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpи
!lstm_2/while/lstm_cell_3/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2#
!lstm_2/while/lstm_cell_3/MatMul_1Я
lstm_2/while/lstm_cell_3/addAddV2)lstm_2/while/lstm_cell_3/MatMul:product:0+lstm_2/while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/while/lstm_cell_3/addй
/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype021
/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpм
 lstm_2/while/lstm_cell_3/BiasAddBiasAdd lstm_2/while/lstm_cell_3/add:z:07lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2"
 lstm_2/while/lstm_cell_3/BiasAdd
lstm_2/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_2/while/lstm_cell_3/Const
(lstm_2/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_3/split/split_dimЃ
lstm_2/while/lstm_cell_3/splitSplit1lstm_2/while/lstm_cell_3/split/split_dim:output:0)lstm_2/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2 
lstm_2/while/lstm_cell_3/splitЊ
 lstm_2/while/lstm_cell_3/SigmoidSigmoid'lstm_2/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 lstm_2/while/lstm_cell_3/SigmoidЎ
"lstm_2/while/lstm_cell_3/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_1Й
lstm_2/while/lstm_cell_3/mulMul&lstm_2/while/lstm_cell_3/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/while/lstm_cell_3/mulЎ
"lstm_2/while/lstm_cell_3/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_2Ч
lstm_2/while/lstm_cell_3/mul_1Mul$lstm_2/while/lstm_cell_3/Sigmoid:y:0&lstm_2/while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_2/while/lstm_cell_3/mul_1С
lstm_2/while/lstm_cell_3/add_1AddV2 lstm_2/while/lstm_cell_3/mul:z:0"lstm_2/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_2/while/lstm_cell_3/add_1Ў
"lstm_2/while/lstm_cell_3/Sigmoid_3Sigmoid'lstm_2/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_3Љ
"lstm_2/while/lstm_cell_3/Sigmoid_4Sigmoid"lstm_2/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_2/while/lstm_cell_3/Sigmoid_4Щ
lstm_2/while/lstm_cell_3/mul_2Mul&lstm_2/while/lstm_cell_3/Sigmoid_3:y:0&lstm_2/while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_2/while/lstm_cell_3/mul_2
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/IdentityЃ
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations0^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1
lstm_2/while/Identity_2Identitylstm_2/while/add:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2И
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3Њ
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_3/mul_2:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/while/Identity_4Њ
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_3/add_1:z:00^lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_3_matmul_readvariableop_resource9lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0"Ф
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2b
/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Ў
b
)__inference_dropout_2_layer_call_fn_15228

inputs
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_127042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs


&__inference_lstm_3_layer_call_fn_15561

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_130272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ЈB
є
while_body_13154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resourceЂ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpд
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_1
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_2Ћ
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_1Ѕ
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_3
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_4­
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
ь$

while_body_11665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_4_11689_0
while_lstm_cell_4_11691_0
while_lstm_cell_4_11693_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_4_11689
while_lstm_cell_4_11691
while_lstm_cell_4_11693Ђ)while/lstm_cell_4/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemз
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_11689_0while_lstm_cell_4_11691_0while_lstm_cell_4_11693_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_112392+
)while/lstm_cell_4/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2*^while/lstm_cell_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_4_11689while_lstm_cell_4_11689_0"4
while_lstm_cell_4_11691while_lstm_cell_4_11691_0"4
while_lstm_cell_4_11693while_lstm_cell_4_11693_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ЈB
є
while_body_15984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resourceЂ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpд
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_1
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_2Ћ
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_1Ѕ
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_3
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_4­
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 

р
#__inference_signature_wrapper_13584	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_105232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ<

_user_specified_nameinput
І
О
while_cond_11532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_11532___redundant_placeholder03
/while_while_cond_11532___redundant_placeholder13
/while_while_cond_11532___redundant_placeholder23
/while_while_cond_11532___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
љ	
Ъ
output_while_cond_14418*
&output_while_output_while_loop_counter0
,output_while_output_while_maximum_iterations
output_while_placeholder
output_while_placeholder_1
output_while_placeholder_2
output_while_placeholder_3,
(output_while_less_output_strided_slice_1A
=output_while_output_while_cond_14418___redundant_placeholder0A
=output_while_output_while_cond_14418___redundant_placeholder1A
=output_while_output_while_cond_14418___redundant_placeholder2A
=output_while_output_while_cond_14418___redundant_placeholder3
output_while_identity

output/while/LessLessoutput_while_placeholder(output_while_less_output_strided_slice_1*
T0*
_output_shapes
: 2
output/while/Lessr
output/while/IdentityIdentityoutput/while/Less:z:0*
T0
*
_output_shapes
: 2
output/while/Identity"7
output_while_identityoutput/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
ч
Г
G__inference_sequential_1_layer_call_and_return_conditional_losses_13480

inputs
lstm_2_13456
lstm_2_13458
lstm_2_13460
lstm_3_13464
lstm_3_13466
lstm_3_13468
output_13472
output_13474
output_13476
identityЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_13456lstm_2_13458lstm_2_13460*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_125092 
lstm_2/StatefulPartitionedCall
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_127042#
!dropout_2/StatefulPartitionedCallП
lstm_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0lstm_3_13464lstm_3_13466lstm_3_13468*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_128742 
lstm_3/StatefulPartitionedCallЗ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_130692#
!dropout_3/StatefulPartitionedCallЛ
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0output_13472output_13474output_13476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_132392 
output/StatefulPartitionedCallІ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
І
О
while_cond_15098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15098___redundant_placeholder03
/while_while_cond_15098___redundant_placeholder13
/while_while_cond_15098___redundant_placeholder23
/while_while_cond_15098___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Ђ
E
)__inference_dropout_3_layer_call_fn_15916

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_130742
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ь$

while_body_12275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_5_12299_0
while_lstm_cell_5_12301_0
while_lstm_cell_5_12303_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_5_12299
while_lstm_cell_5_12301
while_lstm_cell_5_12303Ђ)while/lstm_cell_5/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemз
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_12299_0while_lstm_cell_5_12301_0while_lstm_cell_5_12303_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_118492+
)while/lstm_cell_5/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_5_12299while_lstm_cell_5_12299_0"4
while_lstm_cell_5_12301while_lstm_cell_5_12301_0"4
while_lstm_cell_5_12303while_lstm_cell_5_12303_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
І
О
while_cond_15453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15453___redundant_placeholder03
/while_while_cond_15453___redundant_placeholder13
/while_while_cond_15453___redundant_placeholder23
/while_while_cond_15453___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Г
й
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_11849

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	№*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ<2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ<:џџџџџџџџџ<:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ<
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ<
 
_user_specified_namestates
Б

&__inference_lstm_2_layer_call_fn_14867
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_109922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
І
О
while_cond_13153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13153___redundant_placeholder03
/while_while_cond_13153___redundant_placeholder13
/while_while_cond_13153___redundant_placeholder23
/while_while_cond_13153___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
Ђ
E
)__inference_dropout_2_layer_call_fn_15233

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_127092
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
љ	
Ъ
lstm_2_while_cond_14118*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1A
=lstm_2_while_lstm_2_while_cond_14118___redundant_placeholder0A
=lstm_2_while_lstm_2_while_cond_14118___redundant_placeholder1A
=lstm_2_while_lstm_2_while_cond_14118___redundant_placeholder2A
=lstm_2_while_lstm_2_while_cond_14118___redundant_placeholder3
lstm_2_while_identity

lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
І
О
while_cond_15628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15628___redundant_placeholder03
/while_while_cond_15628___redundant_placeholder13
/while_while_cond_15628___redundant_placeholder23
/while_while_cond_15628___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
лџ


 __inference__wrapped_model_10523	
inputB
>sequential_1_lstm_2_lstm_cell_3_matmul_readvariableop_resourceD
@sequential_1_lstm_2_lstm_cell_3_matmul_1_readvariableop_resourceC
?sequential_1_lstm_2_lstm_cell_3_biasadd_readvariableop_resourceB
>sequential_1_lstm_3_lstm_cell_4_matmul_readvariableop_resourceD
@sequential_1_lstm_3_lstm_cell_4_matmul_1_readvariableop_resourceC
?sequential_1_lstm_3_lstm_cell_4_biasadd_readvariableop_resourceB
>sequential_1_output_lstm_cell_5_matmul_readvariableop_resourceD
@sequential_1_output_lstm_cell_5_matmul_1_readvariableop_resourceC
?sequential_1_output_lstm_cell_5_biasadd_readvariableop_resource
identityЂ6sequential_1/lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpЂ5sequential_1/lstm_2/lstm_cell_3/MatMul/ReadVariableOpЂ7sequential_1/lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpЂsequential_1/lstm_2/whileЂ6sequential_1/lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpЂ5sequential_1/lstm_3/lstm_cell_4/MatMul/ReadVariableOpЂ7sequential_1/lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpЂsequential_1/lstm_3/whileЂ6sequential_1/output/lstm_cell_5/BiasAdd/ReadVariableOpЂ5sequential_1/output/lstm_cell_5/MatMul/ReadVariableOpЂ7sequential_1/output/lstm_cell_5/MatMul_1/ReadVariableOpЂsequential_1/output/whilek
sequential_1/lstm_2/ShapeShapeinput*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape
'sequential_1/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_2/strided_slice/stack 
)sequential_1/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_1 
)sequential_1/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_2к
!sequential_1/lstm_2/strided_sliceStridedSlice"sequential_1/lstm_2/Shape:output:00sequential_1/lstm_2/strided_slice/stack:output:02sequential_1/lstm_2/strided_slice/stack_1:output:02sequential_1/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_2/strided_slice
sequential_1/lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_2/zeros/mul/yМ
sequential_1/lstm_2/zeros/mulMul*sequential_1/lstm_2/strided_slice:output:0(sequential_1/lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/zeros/mul
 sequential_1/lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_1/lstm_2/zeros/Less/yЗ
sequential_1/lstm_2/zeros/LessLess!sequential_1/lstm_2/zeros/mul:z:0)sequential_1/lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/zeros/Less
"sequential_1/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_1/lstm_2/zeros/packed/1г
 sequential_1/lstm_2/zeros/packedPack*sequential_1/lstm_2/strided_slice:output:0+sequential_1/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_2/zeros/packed
sequential_1/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_2/zeros/ConstХ
sequential_1/lstm_2/zerosFill)sequential_1/lstm_2/zeros/packed:output:0(sequential_1/lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/lstm_2/zeros
!sequential_1/lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_2/zeros_1/mul/yТ
sequential_1/lstm_2/zeros_1/mulMul*sequential_1/lstm_2/strided_slice:output:0*sequential_1/lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/zeros_1/mul
"sequential_1/lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_1/lstm_2/zeros_1/Less/yП
 sequential_1/lstm_2/zeros_1/LessLess#sequential_1/lstm_2/zeros_1/mul:z:0+sequential_1/lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_2/zeros_1/Less
$sequential_1/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/lstm_2/zeros_1/packed/1й
"sequential_1/lstm_2/zeros_1/packedPack*sequential_1/lstm_2/strided_slice:output:0-sequential_1/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_2/zeros_1/packed
!sequential_1/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_2/zeros_1/ConstЭ
sequential_1/lstm_2/zeros_1Fill+sequential_1/lstm_2/zeros_1/packed:output:0*sequential_1/lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/lstm_2/zeros_1
"sequential_1/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_2/transpose/permЕ
sequential_1/lstm_2/transpose	Transposeinput+sequential_1/lstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
sequential_1/lstm_2/transpose
sequential_1/lstm_2/Shape_1Shape!sequential_1/lstm_2/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape_1 
)sequential_1/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_1/stackЄ
+sequential_1/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_1Є
+sequential_1/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_2ц
#sequential_1/lstm_2/strided_slice_1StridedSlice$sequential_1/lstm_2/Shape_1:output:02sequential_1/lstm_2/strided_slice_1/stack:output:04sequential_1/lstm_2/strided_slice_1/stack_1:output:04sequential_1/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_1­
/sequential_1/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ21
/sequential_1/lstm_2/TensorArrayV2/element_shape
!sequential_1/lstm_2/TensorArrayV2TensorListReserve8sequential_1/lstm_2/TensorArrayV2/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_2/TensorArrayV2ч
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2K
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeШ
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_2/transpose:y:0Rsequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor 
)sequential_1/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_2/stackЄ
+sequential_1/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_1Є
+sequential_1/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_2є
#sequential_1/lstm_2/strided_slice_2StridedSlice!sequential_1/lstm_2/transpose:y:02sequential_1/lstm_2/strided_slice_2/stack:output:04sequential_1/lstm_2/strided_slice_2/stack_1:output:04sequential_1/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_2э
5sequential_1/lstm_2/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp>sequential_1_lstm_2_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype027
5sequential_1/lstm_2/lstm_cell_3/MatMul/ReadVariableOpљ
&sequential_1/lstm_2/lstm_cell_3/MatMulMatMul,sequential_1/lstm_2/strided_slice_2:output:0=sequential_1/lstm_2/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2(
&sequential_1/lstm_2/lstm_cell_3/MatMulѓ
7sequential_1/lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp@sequential_1_lstm_2_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype029
7sequential_1/lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpѕ
(sequential_1/lstm_2/lstm_cell_3/MatMul_1MatMul"sequential_1/lstm_2/zeros:output:0?sequential_1/lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2*
(sequential_1/lstm_2/lstm_cell_3/MatMul_1ы
#sequential_1/lstm_2/lstm_cell_3/addAddV20sequential_1/lstm_2/lstm_cell_3/MatMul:product:02sequential_1/lstm_2/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2%
#sequential_1/lstm_2/lstm_cell_3/addь
6sequential_1/lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_lstm_2_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype028
6sequential_1/lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpј
'sequential_1/lstm_2/lstm_cell_3/BiasAddBiasAdd'sequential_1/lstm_2/lstm_cell_3/add:z:0>sequential_1/lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2)
'sequential_1/lstm_2/lstm_cell_3/BiasAdd
%sequential_1/lstm_2/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/lstm_2/lstm_cell_3/ConstЄ
/sequential_1/lstm_2/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_2/lstm_cell_3/split/split_dimП
%sequential_1/lstm_2/lstm_cell_3/splitSplit8sequential_1/lstm_2/lstm_cell_3/split/split_dim:output:00sequential_1/lstm_2/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2'
%sequential_1/lstm_2/lstm_cell_3/splitП
'sequential_1/lstm_2/lstm_cell_3/SigmoidSigmoid.sequential_1/lstm_2/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'sequential_1/lstm_2/lstm_cell_3/SigmoidУ
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_1Sigmoid.sequential_1/lstm_2/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_1и
#sequential_1/lstm_2/lstm_cell_3/mulMul-sequential_1/lstm_2/lstm_cell_3/Sigmoid_1:y:0$sequential_1/lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2%
#sequential_1/lstm_2/lstm_cell_3/mulУ
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_2Sigmoid.sequential_1/lstm_2/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_2у
%sequential_1/lstm_2/lstm_cell_3/mul_1Mul+sequential_1/lstm_2/lstm_cell_3/Sigmoid:y:0-sequential_1/lstm_2/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_2/lstm_cell_3/mul_1н
%sequential_1/lstm_2/lstm_cell_3/add_1AddV2'sequential_1/lstm_2/lstm_cell_3/mul:z:0)sequential_1/lstm_2/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_2/lstm_cell_3/add_1У
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_3Sigmoid.sequential_1/lstm_2/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_3О
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_4Sigmoid)sequential_1/lstm_2/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_2/lstm_cell_3/Sigmoid_4х
%sequential_1/lstm_2/lstm_cell_3/mul_2Mul-sequential_1/lstm_2/lstm_cell_3/Sigmoid_3:y:0-sequential_1/lstm_2/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_2/lstm_cell_3/mul_2З
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   23
1sequential_1/lstm_2/TensorArrayV2_1/element_shape
#sequential_1/lstm_2/TensorArrayV2_1TensorListReserve:sequential_1/lstm_2/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_2/TensorArrayV2_1v
sequential_1/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_2/timeЇ
,sequential_1/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2.
,sequential_1/lstm_2/while/maximum_iterations
&sequential_1/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_2/while/loop_counter
sequential_1/lstm_2/whileWhile/sequential_1/lstm_2/while/loop_counter:output:05sequential_1/lstm_2/while/maximum_iterations:output:0!sequential_1/lstm_2/time:output:0,sequential_1/lstm_2/TensorArrayV2_1:handle:0"sequential_1/lstm_2/zeros:output:0$sequential_1/lstm_2/zeros_1:output:0,sequential_1/lstm_2/strided_slice_1:output:0Ksequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_1_lstm_2_lstm_cell_3_matmul_readvariableop_resource@sequential_1_lstm_2_lstm_cell_3_matmul_1_readvariableop_resource?sequential_1_lstm_2_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_1_lstm_2_while_body_10138*0
cond(R&
$sequential_1_lstm_2_while_cond_10137*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
sequential_1/lstm_2/whileн
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2F
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeИ
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_2/while:output:3Msequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype028
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackЉ
)sequential_1/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2+
)sequential_1/lstm_2/strided_slice_3/stackЄ
+sequential_1/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_2/strided_slice_3/stack_1Є
+sequential_1/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_3/stack_2
#sequential_1/lstm_2/strided_slice_3StridedSlice?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_2/strided_slice_3/stack:output:04sequential_1/lstm_2/strided_slice_3/stack_1:output:04sequential_1/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_3Ё
$sequential_1/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_2/transpose_1/permѕ
sequential_1/lstm_2/transpose_1	Transpose?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2!
sequential_1/lstm_2/transpose_1
sequential_1/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_2/runtimeЉ
sequential_1/dropout_2/IdentityIdentity#sequential_1/lstm_2/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2!
sequential_1/dropout_2/Identity
sequential_1/lstm_3/ShapeShape(sequential_1/dropout_2/Identity:output:0*
T0*
_output_shapes
:2
sequential_1/lstm_3/Shape
'sequential_1/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_3/strided_slice/stack 
)sequential_1/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_3/strided_slice/stack_1 
)sequential_1/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_3/strided_slice/stack_2к
!sequential_1/lstm_3/strided_sliceStridedSlice"sequential_1/lstm_3/Shape:output:00sequential_1/lstm_3/strided_slice/stack:output:02sequential_1/lstm_3/strided_slice/stack_1:output:02sequential_1/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_3/strided_slice
sequential_1/lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_3/zeros/mul/yМ
sequential_1/lstm_3/zeros/mulMul*sequential_1/lstm_3/strided_slice:output:0(sequential_1/lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_3/zeros/mul
 sequential_1/lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_1/lstm_3/zeros/Less/yЗ
sequential_1/lstm_3/zeros/LessLess!sequential_1/lstm_3/zeros/mul:z:0)sequential_1/lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_3/zeros/Less
"sequential_1/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_1/lstm_3/zeros/packed/1г
 sequential_1/lstm_3/zeros/packedPack*sequential_1/lstm_3/strided_slice:output:0+sequential_1/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_3/zeros/packed
sequential_1/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_3/zeros/ConstХ
sequential_1/lstm_3/zerosFill)sequential_1/lstm_3/zeros/packed:output:0(sequential_1/lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/lstm_3/zeros
!sequential_1/lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_3/zeros_1/mul/yТ
sequential_1/lstm_3/zeros_1/mulMul*sequential_1/lstm_3/strided_slice:output:0*sequential_1/lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_3/zeros_1/mul
"sequential_1/lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_1/lstm_3/zeros_1/Less/yП
 sequential_1/lstm_3/zeros_1/LessLess#sequential_1/lstm_3/zeros_1/mul:z:0+sequential_1/lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_3/zeros_1/Less
$sequential_1/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/lstm_3/zeros_1/packed/1й
"sequential_1/lstm_3/zeros_1/packedPack*sequential_1/lstm_3/strided_slice:output:0-sequential_1/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_3/zeros_1/packed
!sequential_1/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_3/zeros_1/ConstЭ
sequential_1/lstm_3/zeros_1Fill+sequential_1/lstm_3/zeros_1/packed:output:0*sequential_1/lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/lstm_3/zeros_1
"sequential_1/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_3/transpose/permи
sequential_1/lstm_3/transpose	Transpose(sequential_1/dropout_2/Identity:output:0+sequential_1/lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
sequential_1/lstm_3/transpose
sequential_1/lstm_3/Shape_1Shape!sequential_1/lstm_3/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_3/Shape_1 
)sequential_1/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_3/strided_slice_1/stackЄ
+sequential_1/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_1/stack_1Є
+sequential_1/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_1/stack_2ц
#sequential_1/lstm_3/strided_slice_1StridedSlice$sequential_1/lstm_3/Shape_1:output:02sequential_1/lstm_3/strided_slice_1/stack:output:04sequential_1/lstm_3/strided_slice_1/stack_1:output:04sequential_1/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_3/strided_slice_1­
/sequential_1/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ21
/sequential_1/lstm_3/TensorArrayV2/element_shape
!sequential_1/lstm_3/TensorArrayV2TensorListReserve8sequential_1/lstm_3/TensorArrayV2/element_shape:output:0,sequential_1/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_3/TensorArrayV2ч
Isequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2K
Isequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeШ
;sequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_3/transpose:y:0Rsequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor 
)sequential_1/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_3/strided_slice_2/stackЄ
+sequential_1/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_2/stack_1Є
+sequential_1/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_2/stack_2є
#sequential_1/lstm_3/strided_slice_2StridedSlice!sequential_1/lstm_3/transpose:y:02sequential_1/lstm_3/strided_slice_2/stack:output:04sequential_1/lstm_3/strided_slice_2/stack_1:output:04sequential_1/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_1/lstm_3/strided_slice_2э
5sequential_1/lstm_3/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp>sequential_1_lstm_3_lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype027
5sequential_1/lstm_3/lstm_cell_4/MatMul/ReadVariableOpљ
&sequential_1/lstm_3/lstm_cell_4/MatMulMatMul,sequential_1/lstm_3/strided_slice_2:output:0=sequential_1/lstm_3/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2(
&sequential_1/lstm_3/lstm_cell_4/MatMulѓ
7sequential_1/lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp@sequential_1_lstm_3_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype029
7sequential_1/lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpѕ
(sequential_1/lstm_3/lstm_cell_4/MatMul_1MatMul"sequential_1/lstm_3/zeros:output:0?sequential_1/lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2*
(sequential_1/lstm_3/lstm_cell_4/MatMul_1ы
#sequential_1/lstm_3/lstm_cell_4/addAddV20sequential_1/lstm_3/lstm_cell_4/MatMul:product:02sequential_1/lstm_3/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2%
#sequential_1/lstm_3/lstm_cell_4/addь
6sequential_1/lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_lstm_3_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype028
6sequential_1/lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpј
'sequential_1/lstm_3/lstm_cell_4/BiasAddBiasAdd'sequential_1/lstm_3/lstm_cell_4/add:z:0>sequential_1/lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2)
'sequential_1/lstm_3/lstm_cell_4/BiasAdd
%sequential_1/lstm_3/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/lstm_3/lstm_cell_4/ConstЄ
/sequential_1/lstm_3/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_3/lstm_cell_4/split/split_dimП
%sequential_1/lstm_3/lstm_cell_4/splitSplit8sequential_1/lstm_3/lstm_cell_4/split/split_dim:output:00sequential_1/lstm_3/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2'
%sequential_1/lstm_3/lstm_cell_4/splitП
'sequential_1/lstm_3/lstm_cell_4/SigmoidSigmoid.sequential_1/lstm_3/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'sequential_1/lstm_3/lstm_cell_4/SigmoidУ
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_1Sigmoid.sequential_1/lstm_3/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_1и
#sequential_1/lstm_3/lstm_cell_4/mulMul-sequential_1/lstm_3/lstm_cell_4/Sigmoid_1:y:0$sequential_1/lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2%
#sequential_1/lstm_3/lstm_cell_4/mulУ
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_2Sigmoid.sequential_1/lstm_3/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_2у
%sequential_1/lstm_3/lstm_cell_4/mul_1Mul+sequential_1/lstm_3/lstm_cell_4/Sigmoid:y:0-sequential_1/lstm_3/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_3/lstm_cell_4/mul_1н
%sequential_1/lstm_3/lstm_cell_4/add_1AddV2'sequential_1/lstm_3/lstm_cell_4/mul:z:0)sequential_1/lstm_3/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_3/lstm_cell_4/add_1У
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_3Sigmoid.sequential_1/lstm_3/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_3О
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_4Sigmoid)sequential_1/lstm_3/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_3/lstm_cell_4/Sigmoid_4х
%sequential_1/lstm_3/lstm_cell_4/mul_2Mul-sequential_1/lstm_3/lstm_cell_4/Sigmoid_3:y:0-sequential_1/lstm_3/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_3/lstm_cell_4/mul_2З
1sequential_1/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   23
1sequential_1/lstm_3/TensorArrayV2_1/element_shape
#sequential_1/lstm_3/TensorArrayV2_1TensorListReserve:sequential_1/lstm_3/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_3/TensorArrayV2_1v
sequential_1/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_3/timeЇ
,sequential_1/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2.
,sequential_1/lstm_3/while/maximum_iterations
&sequential_1/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_3/while/loop_counter
sequential_1/lstm_3/whileWhile/sequential_1/lstm_3/while/loop_counter:output:05sequential_1/lstm_3/while/maximum_iterations:output:0!sequential_1/lstm_3/time:output:0,sequential_1/lstm_3/TensorArrayV2_1:handle:0"sequential_1/lstm_3/zeros:output:0$sequential_1/lstm_3/zeros_1:output:0,sequential_1/lstm_3/strided_slice_1:output:0Ksequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_1_lstm_3_lstm_cell_4_matmul_readvariableop_resource@sequential_1_lstm_3_lstm_cell_4_matmul_1_readvariableop_resource?sequential_1_lstm_3_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_1_lstm_3_while_body_10288*0
cond(R&
$sequential_1_lstm_3_while_cond_10287*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
sequential_1/lstm_3/whileн
Dsequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2F
Dsequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeИ
6sequential_1/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_3/while:output:3Msequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype028
6sequential_1/lstm_3/TensorArrayV2Stack/TensorListStackЉ
)sequential_1/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2+
)sequential_1/lstm_3/strided_slice_3/stackЄ
+sequential_1/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_3/strided_slice_3/stack_1Є
+sequential_1/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_3/strided_slice_3/stack_2
#sequential_1/lstm_3/strided_slice_3StridedSlice?sequential_1/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_3/strided_slice_3/stack:output:04sequential_1/lstm_3/strided_slice_3/stack_1:output:04sequential_1/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_1/lstm_3/strided_slice_3Ё
$sequential_1/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_3/transpose_1/permѕ
sequential_1/lstm_3/transpose_1	Transpose?sequential_1/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2!
sequential_1/lstm_3/transpose_1
sequential_1/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_3/runtimeЉ
sequential_1/dropout_3/IdentityIdentity#sequential_1/lstm_3/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2!
sequential_1/dropout_3/Identity
sequential_1/output/ShapeShape(sequential_1/dropout_3/Identity:output:0*
T0*
_output_shapes
:2
sequential_1/output/Shape
'sequential_1/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/output/strided_slice/stack 
)sequential_1/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/output/strided_slice/stack_1 
)sequential_1/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/output/strided_slice/stack_2к
!sequential_1/output/strided_sliceStridedSlice"sequential_1/output/Shape:output:00sequential_1/output/strided_slice/stack:output:02sequential_1/output/strided_slice/stack_1:output:02sequential_1/output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/output/strided_slice
sequential_1/output/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2!
sequential_1/output/zeros/mul/yМ
sequential_1/output/zeros/mulMul*sequential_1/output/strided_slice:output:0(sequential_1/output/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/output/zeros/mul
 sequential_1/output/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_1/output/zeros/Less/yЗ
sequential_1/output/zeros/LessLess!sequential_1/output/zeros/mul:z:0)sequential_1/output/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/output/zeros/Less
"sequential_1/output/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<2$
"sequential_1/output/zeros/packed/1г
 sequential_1/output/zeros/packedPack*sequential_1/output/strided_slice:output:0+sequential_1/output/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/output/zeros/packed
sequential_1/output/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/output/zeros/ConstХ
sequential_1/output/zerosFill)sequential_1/output/zeros/packed:output:0(sequential_1/output/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
sequential_1/output/zeros
!sequential_1/output/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2#
!sequential_1/output/zeros_1/mul/yТ
sequential_1/output/zeros_1/mulMul*sequential_1/output/strided_slice:output:0*sequential_1/output/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/output/zeros_1/mul
"sequential_1/output/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_1/output/zeros_1/Less/yП
 sequential_1/output/zeros_1/LessLess#sequential_1/output/zeros_1/mul:z:0+sequential_1/output/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/output/zeros_1/Less
$sequential_1/output/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<2&
$sequential_1/output/zeros_1/packed/1й
"sequential_1/output/zeros_1/packedPack*sequential_1/output/strided_slice:output:0-sequential_1/output/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/output/zeros_1/packed
!sequential_1/output/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/output/zeros_1/ConstЭ
sequential_1/output/zeros_1Fill+sequential_1/output/zeros_1/packed:output:0*sequential_1/output/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
sequential_1/output/zeros_1
"sequential_1/output/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/output/transpose/permи
sequential_1/output/transpose	Transpose(sequential_1/dropout_3/Identity:output:0+sequential_1/output/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
sequential_1/output/transpose
sequential_1/output/Shape_1Shape!sequential_1/output/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/output/Shape_1 
)sequential_1/output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/output/strided_slice_1/stackЄ
+sequential_1/output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/output/strided_slice_1/stack_1Є
+sequential_1/output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/output/strided_slice_1/stack_2ц
#sequential_1/output/strided_slice_1StridedSlice$sequential_1/output/Shape_1:output:02sequential_1/output/strided_slice_1/stack:output:04sequential_1/output/strided_slice_1/stack_1:output:04sequential_1/output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/output/strided_slice_1­
/sequential_1/output/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ21
/sequential_1/output/TensorArrayV2/element_shape
!sequential_1/output/TensorArrayV2TensorListReserve8sequential_1/output/TensorArrayV2/element_shape:output:0,sequential_1/output/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/output/TensorArrayV2ч
Isequential_1/output/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2K
Isequential_1/output/TensorArrayUnstack/TensorListFromTensor/element_shapeШ
;sequential_1/output/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/output/transpose:y:0Rsequential_1/output/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/output/TensorArrayUnstack/TensorListFromTensor 
)sequential_1/output/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/output/strided_slice_2/stackЄ
+sequential_1/output/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/output/strided_slice_2/stack_1Є
+sequential_1/output/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/output/strided_slice_2/stack_2є
#sequential_1/output/strided_slice_2StridedSlice!sequential_1/output/transpose:y:02sequential_1/output/strided_slice_2/stack:output:04sequential_1/output/strided_slice_2/stack_1:output:04sequential_1/output/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_1/output/strided_slice_2ю
5sequential_1/output/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp>sequential_1_output_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype027
5sequential_1/output/lstm_cell_5/MatMul/ReadVariableOpњ
&sequential_1/output/lstm_cell_5/MatMulMatMul,sequential_1/output/strided_slice_2:output:0=sequential_1/output/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2(
&sequential_1/output/lstm_cell_5/MatMulє
7sequential_1/output/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp@sequential_1_output_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype029
7sequential_1/output/lstm_cell_5/MatMul_1/ReadVariableOpі
(sequential_1/output/lstm_cell_5/MatMul_1MatMul"sequential_1/output/zeros:output:0?sequential_1/output/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2*
(sequential_1/output/lstm_cell_5/MatMul_1ь
#sequential_1/output/lstm_cell_5/addAddV20sequential_1/output/lstm_cell_5/MatMul:product:02sequential_1/output/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2%
#sequential_1/output/lstm_cell_5/addэ
6sequential_1/output/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_output_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype028
6sequential_1/output/lstm_cell_5/BiasAdd/ReadVariableOpљ
'sequential_1/output/lstm_cell_5/BiasAddBiasAdd'sequential_1/output/lstm_cell_5/add:z:0>sequential_1/output/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2)
'sequential_1/output/lstm_cell_5/BiasAdd
%sequential_1/output/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/output/lstm_cell_5/ConstЄ
/sequential_1/output/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/output/lstm_cell_5/split/split_dimП
%sequential_1/output/lstm_cell_5/splitSplit8sequential_1/output/lstm_cell_5/split/split_dim:output:00sequential_1/output/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2'
%sequential_1/output/lstm_cell_5/splitП
'sequential_1/output/lstm_cell_5/SigmoidSigmoid.sequential_1/output/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2)
'sequential_1/output/lstm_cell_5/SigmoidУ
)sequential_1/output/lstm_cell_5/Sigmoid_1Sigmoid.sequential_1/output/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2+
)sequential_1/output/lstm_cell_5/Sigmoid_1и
#sequential_1/output/lstm_cell_5/mulMul-sequential_1/output/lstm_cell_5/Sigmoid_1:y:0$sequential_1/output/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2%
#sequential_1/output/lstm_cell_5/mulУ
)sequential_1/output/lstm_cell_5/Sigmoid_2Sigmoid.sequential_1/output/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2+
)sequential_1/output/lstm_cell_5/Sigmoid_2у
%sequential_1/output/lstm_cell_5/mul_1Mul+sequential_1/output/lstm_cell_5/Sigmoid:y:0-sequential_1/output/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2'
%sequential_1/output/lstm_cell_5/mul_1н
%sequential_1/output/lstm_cell_5/add_1AddV2'sequential_1/output/lstm_cell_5/mul:z:0)sequential_1/output/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2'
%sequential_1/output/lstm_cell_5/add_1У
)sequential_1/output/lstm_cell_5/Sigmoid_3Sigmoid.sequential_1/output/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2+
)sequential_1/output/lstm_cell_5/Sigmoid_3О
)sequential_1/output/lstm_cell_5/Sigmoid_4Sigmoid)sequential_1/output/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2+
)sequential_1/output/lstm_cell_5/Sigmoid_4х
%sequential_1/output/lstm_cell_5/mul_2Mul-sequential_1/output/lstm_cell_5/Sigmoid_3:y:0-sequential_1/output/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2'
%sequential_1/output/lstm_cell_5/mul_2З
1sequential_1/output/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   23
1sequential_1/output/TensorArrayV2_1/element_shape
#sequential_1/output/TensorArrayV2_1TensorListReserve:sequential_1/output/TensorArrayV2_1/element_shape:output:0,sequential_1/output/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/output/TensorArrayV2_1v
sequential_1/output/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/output/timeЇ
,sequential_1/output/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2.
,sequential_1/output/while/maximum_iterations
&sequential_1/output/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/output/while/loop_counter
sequential_1/output/whileWhile/sequential_1/output/while/loop_counter:output:05sequential_1/output/while/maximum_iterations:output:0!sequential_1/output/time:output:0,sequential_1/output/TensorArrayV2_1:handle:0"sequential_1/output/zeros:output:0$sequential_1/output/zeros_1:output:0,sequential_1/output/strided_slice_1:output:0Ksequential_1/output/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_1_output_lstm_cell_5_matmul_readvariableop_resource@sequential_1_output_lstm_cell_5_matmul_1_readvariableop_resource?sequential_1_output_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_1_output_while_body_10438*0
cond(R&
$sequential_1_output_while_cond_10437*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
sequential_1/output/whileн
Dsequential_1/output/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2F
Dsequential_1/output/TensorArrayV2Stack/TensorListStack/element_shapeИ
6sequential_1/output/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/output/while:output:3Msequential_1/output/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ<*
element_dtype028
6sequential_1/output/TensorArrayV2Stack/TensorListStackЉ
)sequential_1/output/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2+
)sequential_1/output/strided_slice_3/stackЄ
+sequential_1/output/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/output/strided_slice_3/stack_1Є
+sequential_1/output/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/output/strided_slice_3/stack_2
#sequential_1/output/strided_slice_3StridedSlice?sequential_1/output/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/output/strided_slice_3/stack:output:04sequential_1/output/strided_slice_3/stack_1:output:04sequential_1/output/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2%
#sequential_1/output/strided_slice_3Ё
$sequential_1/output/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/output/transpose_1/permѕ
sequential_1/output/transpose_1	Transpose?sequential_1/output/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/output/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<<2!
sequential_1/output/transpose_1
sequential_1/output/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/output/runtimeе
IdentityIdentity,sequential_1/output/strided_slice_3:output:07^sequential_1/lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp6^sequential_1/lstm_2/lstm_cell_3/MatMul/ReadVariableOp8^sequential_1/lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp^sequential_1/lstm_2/while7^sequential_1/lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp6^sequential_1/lstm_3/lstm_cell_4/MatMul/ReadVariableOp8^sequential_1/lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp^sequential_1/lstm_3/while7^sequential_1/output/lstm_cell_5/BiasAdd/ReadVariableOp6^sequential_1/output/lstm_cell_5/MatMul/ReadVariableOp8^sequential_1/output/lstm_cell_5/MatMul_1/ReadVariableOp^sequential_1/output/while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::2p
6sequential_1/lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp6sequential_1/lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp2n
5sequential_1/lstm_2/lstm_cell_3/MatMul/ReadVariableOp5sequential_1/lstm_2/lstm_cell_3/MatMul/ReadVariableOp2r
7sequential_1/lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp7sequential_1/lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp26
sequential_1/lstm_2/whilesequential_1/lstm_2/while2p
6sequential_1/lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp6sequential_1/lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp2n
5sequential_1/lstm_3/lstm_cell_4/MatMul/ReadVariableOp5sequential_1/lstm_3/lstm_cell_4/MatMul/ReadVariableOp2r
7sequential_1/lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp7sequential_1/lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp26
sequential_1/lstm_3/whilesequential_1/lstm_3/while2p
6sequential_1/output/lstm_cell_5/BiasAdd/ReadVariableOp6sequential_1/output/lstm_cell_5/BiasAdd/ReadVariableOp2n
5sequential_1/output/lstm_cell_5/MatMul/ReadVariableOp5sequential_1/output/lstm_cell_5/MatMul/ReadVariableOp2r
7sequential_1/output/lstm_cell_5/MatMul_1/ReadVariableOp7sequential_1/output/lstm_cell_5/MatMul_1/ReadVariableOp26
sequential_1/output/whilesequential_1/output/while:R N
+
_output_shapes
:џџџџџџџџџ<

_user_specified_nameinput
[
ь
A__inference_output_layer_call_and_return_conditional_losses_16222
inputs_0.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileF
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2В
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЊ
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_2
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_1
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_3
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_4
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_16137*
condR
while_cond_16136*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ЪZ
ъ
A__inference_output_layer_call_and_return_conditional_losses_13239

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2В
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЊ
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_2
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_1
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_3
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_4
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_13154*
condR
while_cond_13153*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
І
О
while_cond_14945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14945___redundant_placeholder03
/while_while_cond_14945___redundant_placeholder13
/while_while_cond_14945___redundant_placeholder23
/while_while_cond_14945___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
џ

&__inference_output_layer_call_fn_16572

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_133922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Ё
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_12704

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeИ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ<2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ы
Ќ
!__inference__traced_restore_17121
file_prefix
assignvariableop_adam_iter"
assignvariableop_1_adam_beta_1"
assignvariableop_2_adam_beta_2!
assignvariableop_3_adam_decay)
%assignvariableop_4_adam_learning_rate0
,assignvariableop_5_lstm_2_lstm_cell_3_kernel:
6assignvariableop_6_lstm_2_lstm_cell_3_recurrent_kernel.
*assignvariableop_7_lstm_2_lstm_cell_3_bias0
,assignvariableop_8_lstm_3_lstm_cell_4_kernel:
6assignvariableop_9_lstm_3_lstm_cell_4_recurrent_kernel/
+assignvariableop_10_lstm_3_lstm_cell_4_bias1
-assignvariableop_11_output_lstm_cell_5_kernel;
7assignvariableop_12_output_lstm_cell_5_recurrent_kernel/
+assignvariableop_13_output_lstm_cell_5_bias
assignvariableop_14_total
assignvariableop_15_count
assignvariableop_16_total_1
assignvariableop_17_count_18
4assignvariableop_18_adam_lstm_2_lstm_cell_3_kernel_mB
>assignvariableop_19_adam_lstm_2_lstm_cell_3_recurrent_kernel_m6
2assignvariableop_20_adam_lstm_2_lstm_cell_3_bias_m8
4assignvariableop_21_adam_lstm_3_lstm_cell_4_kernel_mB
>assignvariableop_22_adam_lstm_3_lstm_cell_4_recurrent_kernel_m6
2assignvariableop_23_adam_lstm_3_lstm_cell_4_bias_m8
4assignvariableop_24_adam_output_lstm_cell_5_kernel_mB
>assignvariableop_25_adam_output_lstm_cell_5_recurrent_kernel_m6
2assignvariableop_26_adam_output_lstm_cell_5_bias_m8
4assignvariableop_27_adam_lstm_2_lstm_cell_3_kernel_vB
>assignvariableop_28_adam_lstm_2_lstm_cell_3_recurrent_kernel_v6
2assignvariableop_29_adam_lstm_2_lstm_cell_3_bias_v8
4assignvariableop_30_adam_lstm_3_lstm_cell_4_kernel_vB
>assignvariableop_31_adam_lstm_3_lstm_cell_4_recurrent_kernel_v6
2assignvariableop_32_adam_lstm_3_lstm_cell_4_bias_v8
4assignvariableop_33_adam_output_lstm_cell_5_kernel_vB
>assignvariableop_34_adam_output_lstm_cell_5_recurrent_kernel_v6
2assignvariableop_35_adam_output_lstm_cell_5_bias_v
identity_37ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ђ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ў
valueЄBЁ%B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesи
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesч
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Њ
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѓ
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ѓ
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ђ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Њ
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Б
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_2_lstm_cell_3_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Л
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_2_lstm_cell_3_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Џ
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_2_lstm_cell_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Б
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_3_lstm_cell_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Л
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_3_lstm_cell_4_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Г
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_3_lstm_cell_4_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Е
AssignVariableOp_11AssignVariableOp-assignvariableop_11_output_lstm_cell_5_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12П
AssignVariableOp_12AssignVariableOp7assignvariableop_12_output_lstm_cell_5_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Г
AssignVariableOp_13AssignVariableOp+assignvariableop_13_output_lstm_cell_5_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ё
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ё
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ѓ
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ѓ
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18М
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_2_lstm_cell_3_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ц
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_2_lstm_cell_3_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20К
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_2_lstm_cell_3_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21М
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_3_lstm_cell_4_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ц
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_3_lstm_cell_4_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23К
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_3_lstm_cell_4_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24М
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_output_lstm_cell_5_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ц
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_output_lstm_cell_5_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26К
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_output_lstm_cell_5_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27М
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_2_lstm_cell_3_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ц
AssignVariableOp_28AssignVariableOp>assignvariableop_28_adam_lstm_2_lstm_cell_3_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29К
AssignVariableOp_29AssignVariableOp2assignvariableop_29_adam_lstm_2_lstm_cell_3_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30М
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_lstm_3_lstm_cell_4_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Ц
AssignVariableOp_31AssignVariableOp>assignvariableop_31_adam_lstm_3_lstm_cell_4_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32К
AssignVariableOp_32AssignVariableOp2assignvariableop_32_adam_lstm_3_lstm_cell_4_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33М
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_output_lstm_cell_5_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ц
AssignVariableOp_34AssignVariableOp>assignvariableop_34_adam_output_lstm_cell_5_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35К
AssignVariableOp_35AssignVariableOp2assignvariableop_35_adam_output_lstm_cell_5_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_359
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpі
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_36щ
Identity_37IdentityIdentity_36:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_37"#
identity_37Identity_37:output:0*Ї
_input_shapes
: ::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_35AssignVariableOp_352(
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
З
Ы
+__inference_lstm_cell_5_layer_call_fn_16855

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_118162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ<:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/1
ь$

while_body_10923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_3_10947_0
while_lstm_cell_3_10949_0
while_lstm_cell_3_10951_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_3_10947
while_lstm_cell_3_10949
while_lstm_cell_3_10951Ђ)while/lstm_cell_3/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemз
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_10947_0while_lstm_cell_3_10949_0while_lstm_cell_3_10951_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_105962+
)while/lstm_cell_3/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_10947while_lstm_cell_3_10947_0"4
while_lstm_cell_3_10949while_lstm_cell_3_10949_0"4
while_lstm_cell_3_10951while_lstm_cell_3_10951_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ь$

while_body_12143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_5_12167_0
while_lstm_cell_5_12169_0
while_lstm_cell_5_12171_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_5_12167
while_lstm_cell_5_12169
while_lstm_cell_5_12171Ђ)while/lstm_cell_5/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemз
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_12167_0while_lstm_cell_5_12169_0while_lstm_cell_5_12171_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_118162+
)while/lstm_cell_5/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_5_12167while_lstm_cell_5_12167_0"4
while_lstm_cell_5_12169while_lstm_cell_5_12169_0"4
while_lstm_cell_5_12171while_lstm_cell_5_12171_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
ОZ
ъ
A__inference_lstm_2_layer_call_and_return_conditional_losses_12509

inputs.
*lstm_cell_3_matmul_readvariableop_resource0
,lstm_cell_3_matmul_1_readvariableop_resource/
+lstm_cell_3_biasadd_readvariableop_resource
identityЂ"lstm_cell_3/BiasAdd/ReadVariableOpЂ!lstm_cell_3/MatMul/ReadVariableOpЂ#lstm_cell_3/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOpЉ
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMulЗ
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOpЅ
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMul_1
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/addА
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOpЈ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/BiasAddh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimя
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_3/split
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_2
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_1
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_3Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_3
lstm_cell_3/Sigmoid_4Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_4
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_3:y:0lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_12424*
condR
while_cond_12423*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs

Ю
$sequential_1_output_while_cond_10437D
@sequential_1_output_while_sequential_1_output_while_loop_counterJ
Fsequential_1_output_while_sequential_1_output_while_maximum_iterations)
%sequential_1_output_while_placeholder+
'sequential_1_output_while_placeholder_1+
'sequential_1_output_while_placeholder_2+
'sequential_1_output_while_placeholder_3F
Bsequential_1_output_while_less_sequential_1_output_strided_slice_1[
Wsequential_1_output_while_sequential_1_output_while_cond_10437___redundant_placeholder0[
Wsequential_1_output_while_sequential_1_output_while_cond_10437___redundant_placeholder1[
Wsequential_1_output_while_sequential_1_output_while_cond_10437___redundant_placeholder2[
Wsequential_1_output_while_sequential_1_output_while_cond_10437___redundant_placeholder3&
"sequential_1_output_while_identity
д
sequential_1/output/while/LessLess%sequential_1_output_while_placeholderBsequential_1_output_while_less_sequential_1_output_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/output/while/Less
"sequential_1/output/while/IdentityIdentity"sequential_1/output/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/output/while/Identity"Q
"sequential_1_output_while_identity+sequential_1/output/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
Б

&__inference_lstm_2_layer_call_fn_14878
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_111242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ь$

while_body_11055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_3_11079_0
while_lstm_cell_3_11081_0
while_lstm_cell_3_11083_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_3_11079
while_lstm_cell_3_11081
while_lstm_cell_3_11083Ђ)while/lstm_cell_3/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemз
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_11079_0while_lstm_cell_3_11081_0while_lstm_cell_3_11083_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_106292+
)while/lstm_cell_3/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_11079while_lstm_cell_3_11079_0"4
while_lstm_cell_3_11081while_lstm_cell_3_11081_0"4
while_lstm_cell_3_11083while_lstm_cell_3_11083_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
[
ь
A__inference_output_layer_call_and_return_conditional_losses_16069
inputs_0.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileF
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2В
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЊ
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_2
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_1
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_3
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_4
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_15984*
condR
while_cond_15983*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0


&__inference_lstm_3_layer_call_fn_15550

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_128742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
џ

&__inference_output_layer_call_fn_16561

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_132392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ОZ
ъ
A__inference_lstm_2_layer_call_and_return_conditional_losses_15184

inputs.
*lstm_cell_3_matmul_readvariableop_resource0
,lstm_cell_3_matmul_1_readvariableop_resource/
+lstm_cell_3_biasadd_readvariableop_resource
identityЂ"lstm_cell_3/BiasAdd/ReadVariableOpЂ!lstm_cell_3/MatMul/ReadVariableOpЂ#lstm_cell_3/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOpЉ
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMulЗ
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOpЅ
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMul_1
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/addА
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOpЈ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/BiasAddh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimя
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_3/split
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_2
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_1
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_3Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_3
lstm_cell_3/Sigmoid_4Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_4
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_3:y:0lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_15099*
condR
while_cond_15098*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
фL
д	
output_while_body_13966*
&output_while_output_while_loop_counter0
,output_while_output_while_maximum_iterations
output_while_placeholder
output_while_placeholder_1
output_while_placeholder_2
output_while_placeholder_3)
%output_while_output_strided_slice_1_0e
aoutput_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor_0=
9output_while_lstm_cell_5_matmul_readvariableop_resource_0?
;output_while_lstm_cell_5_matmul_1_readvariableop_resource_0>
:output_while_lstm_cell_5_biasadd_readvariableop_resource_0
output_while_identity
output_while_identity_1
output_while_identity_2
output_while_identity_3
output_while_identity_4
output_while_identity_5'
#output_while_output_strided_slice_1c
_output_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor;
7output_while_lstm_cell_5_matmul_readvariableop_resource=
9output_while_lstm_cell_5_matmul_1_readvariableop_resource<
8output_while_lstm_cell_5_biasadd_readvariableop_resourceЂ/output/while/lstm_cell_5/BiasAdd/ReadVariableOpЂ.output/while/lstm_cell_5/MatMul/ReadVariableOpЂ0output/while/lstm_cell_5/MatMul_1/ReadVariableOpб
>output/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>output/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0output/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemaoutput_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor_0output_while_placeholderGoutput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0output/while/TensorArrayV2Read/TensorListGetItemл
.output/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9output_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype020
.output/while/lstm_cell_5/MatMul/ReadVariableOp№
output/while/lstm_cell_5/MatMulMatMul7output/while/TensorArrayV2Read/TensorListGetItem:item:06output/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2!
output/while/lstm_cell_5/MatMulс
0output/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;output_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype022
0output/while/lstm_cell_5/MatMul_1/ReadVariableOpй
!output/while/lstm_cell_5/MatMul_1MatMuloutput_while_placeholder_28output/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2#
!output/while/lstm_cell_5/MatMul_1а
output/while/lstm_cell_5/addAddV2)output/while/lstm_cell_5/MatMul:product:0+output/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/while/lstm_cell_5/addк
/output/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:output_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype021
/output/while/lstm_cell_5/BiasAdd/ReadVariableOpн
 output/while/lstm_cell_5/BiasAddBiasAdd output/while/lstm_cell_5/add:z:07output/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2"
 output/while/lstm_cell_5/BiasAdd
output/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
output/while/lstm_cell_5/Const
(output/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(output/while/lstm_cell_5/split/split_dimЃ
output/while/lstm_cell_5/splitSplit1output/while/lstm_cell_5/split/split_dim:output:0)output/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2 
output/while/lstm_cell_5/splitЊ
 output/while/lstm_cell_5/SigmoidSigmoid'output/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2"
 output/while/lstm_cell_5/SigmoidЎ
"output/while/lstm_cell_5/Sigmoid_1Sigmoid'output/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_1Й
output/while/lstm_cell_5/mulMul&output/while/lstm_cell_5/Sigmoid_1:y:0output_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/while/lstm_cell_5/mulЎ
"output/while/lstm_cell_5/Sigmoid_2Sigmoid'output/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_2Ч
output/while/lstm_cell_5/mul_1Mul$output/while/lstm_cell_5/Sigmoid:y:0&output/while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2 
output/while/lstm_cell_5/mul_1С
output/while/lstm_cell_5/add_1AddV2 output/while/lstm_cell_5/mul:z:0"output/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2 
output/while/lstm_cell_5/add_1Ў
"output/while/lstm_cell_5/Sigmoid_3Sigmoid'output/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_3Љ
"output/while/lstm_cell_5/Sigmoid_4Sigmoid"output/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_4Щ
output/while/lstm_cell_5/mul_2Mul&output/while/lstm_cell_5/Sigmoid_3:y:0&output/while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2 
output/while/lstm_cell_5/mul_2
1output/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemoutput_while_placeholder_1output_while_placeholder"output/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype023
1output/while/TensorArrayV2Write/TensorListSetItemj
output/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
output/while/add/y
output/while/addAddV2output_while_placeholderoutput/while/add/y:output:0*
T0*
_output_shapes
: 2
output/while/addn
output/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
output/while/add_1/y
output/while/add_1AddV2&output_while_output_while_loop_counteroutput/while/add_1/y:output:0*
T0*
_output_shapes
: 2
output/while/add_1
output/while/IdentityIdentityoutput/while/add_1:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/IdentityЃ
output/while/Identity_1Identity,output_while_output_while_maximum_iterations0^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/Identity_1
output/while/Identity_2Identityoutput/while/add:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/Identity_2И
output/while/Identity_3IdentityAoutput/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/Identity_3Њ
output/while/Identity_4Identity"output/while/lstm_cell_5/mul_2:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/while/Identity_4Њ
output/while/Identity_5Identity"output/while/lstm_cell_5/add_1:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/while/Identity_5"7
output_while_identityoutput/while/Identity:output:0";
output_while_identity_1 output/while/Identity_1:output:0";
output_while_identity_2 output/while/Identity_2:output:0";
output_while_identity_3 output/while/Identity_3:output:0";
output_while_identity_4 output/while/Identity_4:output:0";
output_while_identity_5 output/while/Identity_5:output:0"v
8output_while_lstm_cell_5_biasadd_readvariableop_resource:output_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9output_while_lstm_cell_5_matmul_1_readvariableop_resource;output_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7output_while_lstm_cell_5_matmul_readvariableop_resource9output_while_lstm_cell_5_matmul_readvariableop_resource_0"L
#output_while_output_strided_slice_1%output_while_output_strided_slice_1_0"Ф
_output_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensoraoutput_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2b
/output/while/lstm_cell_5/BiasAdd/ReadVariableOp/output/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.output/while/lstm_cell_5/MatMul/ReadVariableOp.output/while/lstm_cell_5/MatMul/ReadVariableOp2d
0output/while/lstm_cell_5/MatMul_1/ReadVariableOp0output/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
Б

&__inference_lstm_3_layer_call_fn_15878
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_116022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
НD
г
A__inference_output_layer_call_and_return_conditional_losses_12212

inputs
lstm_cell_5_12130
lstm_cell_5_12132
lstm_cell_5_12134
identityЂ#lstm_cell_5/StatefulPartitionedCallЂwhileD
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_12130lstm_cell_5_12132lstm_cell_5_12134*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_118162%
#lstm_cell_5/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_12130lstm_cell_5_12132lstm_cell_5_12134*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_12143*
condR
while_cond_12142*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЁB
є
while_body_14946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_3_matmul_readvariableop_resource_08
4while_lstm_cell_3_matmul_1_readvariableop_resource_07
3while_lstm_cell_3_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_3_matmul_readvariableop_resource6
2while_lstm_cell_3_matmul_1_readvariableop_resource5
1while_lstm_cell_3_biasadd_readvariableop_resourceЂ(while/lstm_cell_3/BiasAdd/ReadVariableOpЂ'while/lstm_cell_3/MatMul/ReadVariableOpЂ)while/lstm_cell_3/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOpг
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMulЫ
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOpМ
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMul_1Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/addФ
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOpР
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/BiasAddt
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_3/split
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_1
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_2Ћ
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_1Ѕ
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_3Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_3
while/lstm_cell_3/Sigmoid_4Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_4­
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_3:y:0while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
СD
г
A__inference_lstm_2_layer_call_and_return_conditional_losses_10992

inputs
lstm_cell_3_10910
lstm_cell_3_10912
lstm_cell_3_10914
identityЂ#lstm_cell_3/StatefulPartitionedCallЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_10910lstm_cell_3_10912lstm_cell_3_10914*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_105962%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_10910lstm_cell_3_10912lstm_cell_3_10914*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_10923*
condR
while_cond_10922*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
§Z
ь
A__inference_lstm_3_layer_call_and_return_conditional_losses_15714
inputs_0.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileF
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЉ
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMulЗ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpЅ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/addА
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЈ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_2
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_1
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_3Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_3
lstm_cell_4/Sigmoid_4Sigmoidlstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_4
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_3:y:0lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_15629*
condR
while_cond_15628*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeч
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
нЧ

G__inference_sequential_1_layer_call_and_return_conditional_losses_14051

inputs5
1lstm_2_lstm_cell_3_matmul_readvariableop_resource7
3lstm_2_lstm_cell_3_matmul_1_readvariableop_resource6
2lstm_2_lstm_cell_3_biasadd_readvariableop_resource5
1lstm_3_lstm_cell_4_matmul_readvariableop_resource7
3lstm_3_lstm_cell_4_matmul_1_readvariableop_resource6
2lstm_3_lstm_cell_4_biasadd_readvariableop_resource5
1output_lstm_cell_5_matmul_readvariableop_resource7
3output_lstm_cell_5_matmul_1_readvariableop_resource6
2output_lstm_cell_5_biasadd_readvariableop_resource
identityЂ)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpЂ(lstm_2/lstm_cell_3/MatMul/ReadVariableOpЂ*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpЂlstm_2/whileЂ)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpЂ(lstm_3/lstm_cell_4/MatMul/ReadVariableOpЂ*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpЂlstm_3/whileЂ)output/lstm_cell_5/BiasAdd/ReadVariableOpЂ(output/lstm_cell_5/MatMul/ReadVariableOpЂ*output/lstm_cell_5/MatMul_1/ReadVariableOpЂoutput/whileR
lstm_2/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_2/Shape
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros/mul/y
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros/Less/y
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros/packed/1
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros_1/mul/y
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros_1/Less/y
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros_1/packed/1Ѕ
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/zeros_1
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm
lstm_2/transpose	Transposeinputslstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_2/TensorArrayV2/element_shapeЮ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Э
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2І
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_2/strided_slice_2Ц
(lstm_2/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02*
(lstm_2/lstm_cell_3/MatMul/ReadVariableOpХ
lstm_2/lstm_cell_3/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/MatMulЬ
*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02,
*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpС
lstm_2/lstm_cell_3/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/MatMul_1З
lstm_2/lstm_cell_3/addAddV2#lstm_2/lstm_cell_3/MatMul:product:0%lstm_2/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/addХ
)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02+
)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpФ
lstm_2/lstm_cell_3/BiasAddBiasAddlstm_2/lstm_cell_3/add:z:01lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/BiasAddv
lstm_2/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/lstm_cell_3/Const
"lstm_2/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_3/split/split_dim
lstm_2/lstm_cell_3/splitSplit+lstm_2/lstm_cell_3/split/split_dim:output:0#lstm_2/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_2/lstm_cell_3/split
lstm_2/lstm_cell_3/SigmoidSigmoid!lstm_2/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid
lstm_2/lstm_cell_3/Sigmoid_1Sigmoid!lstm_2/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_1Є
lstm_2/lstm_cell_3/mulMul lstm_2/lstm_cell_3/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/mul
lstm_2/lstm_cell_3/Sigmoid_2Sigmoid!lstm_2/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_2Џ
lstm_2/lstm_cell_3/mul_1Mullstm_2/lstm_cell_3/Sigmoid:y:0 lstm_2/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/mul_1Љ
lstm_2/lstm_cell_3/add_1AddV2lstm_2/lstm_cell_3/mul:z:0lstm_2/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/add_1
lstm_2/lstm_cell_3/Sigmoid_3Sigmoid!lstm_2/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_3
lstm_2/lstm_cell_3/Sigmoid_4Sigmoidlstm_2/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_4Б
lstm_2/lstm_cell_3/mul_2Mul lstm_2/lstm_cell_3/Sigmoid_3:y:0 lstm_2/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/mul_2
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2&
$lstm_2/TensorArrayV2_1/element_shapeд
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterв
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_3_matmul_readvariableop_resource3lstm_2_lstm_cell_3_matmul_1_readvariableop_resource2lstm_2_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_2_while_body_13652*#
condR
lstm_2_while_cond_13651*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
lstm_2/whileУ
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_2/strided_slice_3/stack
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2Ф
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_2/strided_slice_3
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permС
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtimew
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/dropout/ConstЅ
dropout_2/dropout/MulMullstm_2/transpose_1:y:0 dropout_2/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout_2/dropout/Mulx
dropout_2/dropout/ShapeShapelstm_2/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeж
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 dropout_2/dropout/GreaterEqual/yъ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2 
dropout_2/dropout/GreaterEqualЁ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ<2
dropout_2/dropout/CastІ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout_2/dropout/Mul_1g
lstm_3/ShapeShapedropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros/mul/y
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros/Less/y
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros/packed/1
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros_1/mul/y
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros_1/Less/y
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros_1/packed/1Ѕ
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/zeros_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/permЄ
lstm_3/transpose	Transposedropout_2/dropout/Mul_1:z:0lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_3/TensorArrayV2/element_shapeЮ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Э
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2І
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_3/strided_slice_2Ц
(lstm_3/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02*
(lstm_3/lstm_cell_4/MatMul/ReadVariableOpХ
lstm_3/lstm_cell_4/MatMulMatMullstm_3/strided_slice_2:output:00lstm_3/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/MatMulЬ
*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02,
*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpС
lstm_3/lstm_cell_4/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/MatMul_1З
lstm_3/lstm_cell_4/addAddV2#lstm_3/lstm_cell_4/MatMul:product:0%lstm_3/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/addХ
)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02+
)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpФ
lstm_3/lstm_cell_4/BiasAddBiasAddlstm_3/lstm_cell_4/add:z:01lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/BiasAddv
lstm_3/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_4/Const
"lstm_3/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_4/split/split_dim
lstm_3/lstm_cell_4/splitSplit+lstm_3/lstm_cell_4/split/split_dim:output:0#lstm_3/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_3/lstm_cell_4/split
lstm_3/lstm_cell_4/SigmoidSigmoid!lstm_3/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid
lstm_3/lstm_cell_4/Sigmoid_1Sigmoid!lstm_3/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_1Є
lstm_3/lstm_cell_4/mulMul lstm_3/lstm_cell_4/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/mul
lstm_3/lstm_cell_4/Sigmoid_2Sigmoid!lstm_3/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_2Џ
lstm_3/lstm_cell_4/mul_1Mullstm_3/lstm_cell_4/Sigmoid:y:0 lstm_3/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/mul_1Љ
lstm_3/lstm_cell_4/add_1AddV2lstm_3/lstm_cell_4/mul:z:0lstm_3/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/add_1
lstm_3/lstm_cell_4/Sigmoid_3Sigmoid!lstm_3/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_3
lstm_3/lstm_cell_4/Sigmoid_4Sigmoidlstm_3/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_4Б
lstm_3/lstm_cell_4/mul_2Mul lstm_3/lstm_cell_4/Sigmoid_3:y:0 lstm_3/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/mul_2
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2&
$lstm_3/TensorArrayV2_1/element_shapeд
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterв
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_4_matmul_readvariableop_resource3lstm_3_lstm_cell_4_matmul_1_readvariableop_resource2lstm_3_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_13809*#
condR
lstm_3_while_cond_13808*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
lstm_3/whileУ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_3/strided_slice_3/stack
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2Ф
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_3/strided_slice_3
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permС
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtimew
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/dropout/ConstЅ
dropout_3/dropout/MulMullstm_3/transpose_1:y:0 dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout_3/dropout/Mulx
dropout_3/dropout/ShapeShapelstm_3/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shapeж
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 dropout_3/dropout/GreaterEqual/yъ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2 
dropout_3/dropout/GreaterEqualЁ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ<2
dropout_3/dropout/CastІ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout_3/dropout/Mul_1g
output/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
output/Shape
output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
output/strided_slice/stack
output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
output/strided_slice/stack_1
output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
output/strided_slice/stack_2
output/strided_sliceStridedSliceoutput/Shape:output:0#output/strided_slice/stack:output:0%output/strided_slice/stack_1:output:0%output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
output/strided_slicej
output/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros/mul/y
output/zeros/mulMuloutput/strided_slice:output:0output/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
output/zeros/mulm
output/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
output/zeros/Less/y
output/zeros/LessLessoutput/zeros/mul:z:0output/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
output/zeros/Lessp
output/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros/packed/1
output/zeros/packedPackoutput/strided_slice:output:0output/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
output/zeros/packedm
output/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
output/zeros/Const
output/zerosFilloutput/zeros/packed:output:0output/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/zerosn
output/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros_1/mul/y
output/zeros_1/mulMuloutput/strided_slice:output:0output/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
output/zeros_1/mulq
output/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
output/zeros_1/Less/y
output/zeros_1/LessLessoutput/zeros_1/mul:z:0output/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
output/zeros_1/Lesst
output/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros_1/packed/1Ѕ
output/zeros_1/packedPackoutput/strided_slice:output:0 output/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
output/zeros_1/packedq
output/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
output/zeros_1/Const
output/zeros_1Filloutput/zeros_1/packed:output:0output/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/zeros_1
output/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
output/transpose/permЄ
output/transpose	Transposedropout_3/dropout/Mul_1:z:0output/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
output/transposed
output/Shape_1Shapeoutput/transpose:y:0*
T0*
_output_shapes
:2
output/Shape_1
output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
output/strided_slice_1/stack
output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_1/stack_1
output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_1/stack_2
output/strided_slice_1StridedSliceoutput/Shape_1:output:0%output/strided_slice_1/stack:output:0'output/strided_slice_1/stack_1:output:0'output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
output/strided_slice_1
"output/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"output/TensorArrayV2/element_shapeЮ
output/TensorArrayV2TensorListReserve+output/TensorArrayV2/element_shape:output:0output/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
output/TensorArrayV2Э
<output/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<output/TensorArrayUnstack/TensorListFromTensor/element_shape
.output/TensorArrayUnstack/TensorListFromTensorTensorListFromTensoroutput/transpose:y:0Eoutput/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.output/TensorArrayUnstack/TensorListFromTensor
output/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
output/strided_slice_2/stack
output/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_2/stack_1
output/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_2/stack_2І
output/strided_slice_2StridedSliceoutput/transpose:y:0%output/strided_slice_2/stack:output:0'output/strided_slice_2/stack_1:output:0'output/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
output/strided_slice_2Ч
(output/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1output_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02*
(output/lstm_cell_5/MatMul/ReadVariableOpЦ
output/lstm_cell_5/MatMulMatMuloutput/strided_slice_2:output:00output/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/MatMulЭ
*output/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3output_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02,
*output/lstm_cell_5/MatMul_1/ReadVariableOpТ
output/lstm_cell_5/MatMul_1MatMuloutput/zeros:output:02output/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/MatMul_1И
output/lstm_cell_5/addAddV2#output/lstm_cell_5/MatMul:product:0%output/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/addЦ
)output/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2output_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02+
)output/lstm_cell_5/BiasAdd/ReadVariableOpХ
output/lstm_cell_5/BiasAddBiasAddoutput/lstm_cell_5/add:z:01output/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/BiasAddv
output/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
output/lstm_cell_5/Const
"output/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"output/lstm_cell_5/split/split_dim
output/lstm_cell_5/splitSplit+output/lstm_cell_5/split/split_dim:output:0#output/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
output/lstm_cell_5/split
output/lstm_cell_5/SigmoidSigmoid!output/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid
output/lstm_cell_5/Sigmoid_1Sigmoid!output/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_1Є
output/lstm_cell_5/mulMul output/lstm_cell_5/Sigmoid_1:y:0output/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/mul
output/lstm_cell_5/Sigmoid_2Sigmoid!output/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_2Џ
output/lstm_cell_5/mul_1Muloutput/lstm_cell_5/Sigmoid:y:0 output/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/mul_1Љ
output/lstm_cell_5/add_1AddV2output/lstm_cell_5/mul:z:0output/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/add_1
output/lstm_cell_5/Sigmoid_3Sigmoid!output/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_3
output/lstm_cell_5/Sigmoid_4Sigmoidoutput/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_4Б
output/lstm_cell_5/mul_2Mul output/lstm_cell_5/Sigmoid_3:y:0 output/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/mul_2
$output/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2&
$output/TensorArrayV2_1/element_shapeд
output/TensorArrayV2_1TensorListReserve-output/TensorArrayV2_1/element_shape:output:0output/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
output/TensorArrayV2_1\
output/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
output/time
output/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
output/while/maximum_iterationsx
output/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
output/while/loop_counterв
output/whileWhile"output/while/loop_counter:output:0(output/while/maximum_iterations:output:0output/time:output:0output/TensorArrayV2_1:handle:0output/zeros:output:0output/zeros_1:output:0output/strided_slice_1:output:0>output/TensorArrayUnstack/TensorListFromTensor:output_handle:01output_lstm_cell_5_matmul_readvariableop_resource3output_lstm_cell_5_matmul_1_readvariableop_resource2output_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
output_while_body_13966*#
condR
output_while_cond_13965*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
output/whileУ
7output/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   29
7output/TensorArrayV2Stack/TensorListStack/element_shape
)output/TensorArrayV2Stack/TensorListStackTensorListStackoutput/while:output:3@output/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ<*
element_dtype02+
)output/TensorArrayV2Stack/TensorListStack
output/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
output/strided_slice_3/stack
output/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
output/strided_slice_3/stack_1
output/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_3/stack_2Ф
output/strided_slice_3StridedSlice2output/TensorArrayV2Stack/TensorListStack:tensor:0%output/strided_slice_3/stack:output:0'output/strided_slice_3/stack_1:output:0'output/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
output/strided_slice_3
output/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
output/transpose_1/permС
output/transpose_1	Transpose2output/TensorArrayV2Stack/TensorListStack:tensor:0 output/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<<2
output/transpose_1t
output/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
output/runtimeЌ
IdentityIdentityoutput/strided_slice_3:output:0*^lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_3/MatMul/ReadVariableOp+^lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp^lstm_2/while*^lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_4/MatMul/ReadVariableOp+^lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp^lstm_3/while*^output/lstm_cell_5/BiasAdd/ReadVariableOp)^output/lstm_cell_5/MatMul/ReadVariableOp+^output/lstm_cell_5/MatMul_1/ReadVariableOp^output/while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::2V
)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_3/MatMul/ReadVariableOp(lstm_2/lstm_cell_3/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2V
)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_4/MatMul/ReadVariableOp(lstm_3/lstm_cell_4/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while2V
)output/lstm_cell_5/BiasAdd/ReadVariableOp)output/lstm_cell_5/BiasAdd/ReadVariableOp2T
(output/lstm_cell_5/MatMul/ReadVariableOp(output/lstm_cell_5/MatMul/ReadVariableOp2X
*output/lstm_cell_5/MatMul_1/ReadVariableOp*output/lstm_cell_5/MatMul_1/ReadVariableOp2
output/whileoutput/while:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
З
Ы
+__inference_lstm_cell_4_layer_call_fn_16755

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_112062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
љ	
Ъ
output_while_cond_13965*
&output_while_output_while_loop_counter0
,output_while_output_while_maximum_iterations
output_while_placeholder
output_while_placeholder_1
output_while_placeholder_2
output_while_placeholder_3,
(output_while_less_output_strided_slice_1A
=output_while_output_while_cond_13965___redundant_placeholder0A
=output_while_output_while_cond_13965___redundant_placeholder1A
=output_while_output_while_cond_13965___redundant_placeholder2A
=output_while_output_while_cond_13965___redundant_placeholder3
output_while_identity

output/while/LessLessoutput_while_placeholder(output_while_less_output_strided_slice_1*
T0*
_output_shapes
: 2
output/while/Lessr
output/while/IdentityIdentityoutput/while/Less:z:0*
T0
*
_output_shapes
: 2
output/while/Identity"7
output_while_identityoutput/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
нL
д	
lstm_3_while_body_13809*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0?
;lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0>
:lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor;
7lstm_3_while_lstm_cell_4_matmul_readvariableop_resource=
9lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource<
8lstm_3_while_lstm_cell_4_biasadd_readvariableop_resourceЂ/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpЂ.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpЂ0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpб
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItemк
.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype020
.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpя
lstm_3/while/lstm_cell_4/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2!
lstm_3/while/lstm_cell_4/MatMulр
0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype022
0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpи
!lstm_3/while/lstm_cell_4/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2#
!lstm_3/while/lstm_cell_4/MatMul_1Я
lstm_3/while/lstm_cell_4/addAddV2)lstm_3/while/lstm_cell_4/MatMul:product:0+lstm_3/while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/while/lstm_cell_4/addй
/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype021
/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpм
 lstm_3/while/lstm_cell_4/BiasAddBiasAdd lstm_3/while/lstm_cell_4/add:z:07lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2"
 lstm_3/while/lstm_cell_4/BiasAdd
lstm_3/while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_3/while/lstm_cell_4/Const
(lstm_3/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_4/split/split_dimЃ
lstm_3/while/lstm_cell_4/splitSplit1lstm_3/while/lstm_cell_4/split/split_dim:output:0)lstm_3/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2 
lstm_3/while/lstm_cell_4/splitЊ
 lstm_3/while/lstm_cell_4/SigmoidSigmoid'lstm_3/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 lstm_3/while/lstm_cell_4/SigmoidЎ
"lstm_3/while/lstm_cell_4/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_1Й
lstm_3/while/lstm_cell_4/mulMul&lstm_3/while/lstm_cell_4/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/while/lstm_cell_4/mulЎ
"lstm_3/while/lstm_cell_4/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_2Ч
lstm_3/while/lstm_cell_4/mul_1Mul$lstm_3/while/lstm_cell_4/Sigmoid:y:0&lstm_3/while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_3/while/lstm_cell_4/mul_1С
lstm_3/while/lstm_cell_4/add_1AddV2 lstm_3/while/lstm_cell_4/mul:z:0"lstm_3/while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_3/while/lstm_cell_4/add_1Ў
"lstm_3/while/lstm_cell_4/Sigmoid_3Sigmoid'lstm_3/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_3Љ
"lstm_3/while/lstm_cell_4/Sigmoid_4Sigmoid"lstm_3/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_4Щ
lstm_3/while/lstm_cell_4/mul_2Mul&lstm_3/while/lstm_cell_4/Sigmoid_3:y:0&lstm_3/while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_3/while/lstm_cell_4/mul_2
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/IdentityЃ
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations0^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2И
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3Њ
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_4/mul_2:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/while/Identity_4Њ
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_4/add_1:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_4_matmul_readvariableop_resource9lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0"Ф
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2b
/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
НD
г
A__inference_output_layer_call_and_return_conditional_losses_12344

inputs
lstm_cell_5_12262
lstm_cell_5_12264
lstm_cell_5_12266
identityЂ#lstm_cell_5/StatefulPartitionedCallЂwhileD
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_12262lstm_cell_5_12264lstm_cell_5_12266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_118492%
#lstm_cell_5/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_12262lstm_cell_5_12264lstm_cell_5_12266*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_12275*
condR
while_cond_12274*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЁB
є
while_body_15301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resourceЂ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpг
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMulЫ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpМ
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMul_1Г
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/addФ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpР
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_1
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_2Ћ
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_1Ѕ
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_3Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_3
while/lstm_cell_4/Sigmoid_4Sigmoidwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_4­
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_3:y:0while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
З
Ы
+__inference_lstm_cell_3_layer_call_fn_16655

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_105962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
нL
д	
lstm_3_while_body_14269*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0?
;lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0>
:lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor;
7lstm_3_while_lstm_cell_4_matmul_readvariableop_resource=
9lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource<
8lstm_3_while_lstm_cell_4_biasadd_readvariableop_resourceЂ/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpЂ.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpЂ0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpб
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItemк
.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype020
.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpя
lstm_3/while/lstm_cell_4/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2!
lstm_3/while/lstm_cell_4/MatMulр
0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype022
0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpи
!lstm_3/while/lstm_cell_4/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2#
!lstm_3/while/lstm_cell_4/MatMul_1Я
lstm_3/while/lstm_cell_4/addAddV2)lstm_3/while/lstm_cell_4/MatMul:product:0+lstm_3/while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/while/lstm_cell_4/addй
/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype021
/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpм
 lstm_3/while/lstm_cell_4/BiasAddBiasAdd lstm_3/while/lstm_cell_4/add:z:07lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2"
 lstm_3/while/lstm_cell_4/BiasAdd
lstm_3/while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_3/while/lstm_cell_4/Const
(lstm_3/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_4/split/split_dimЃ
lstm_3/while/lstm_cell_4/splitSplit1lstm_3/while/lstm_cell_4/split/split_dim:output:0)lstm_3/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2 
lstm_3/while/lstm_cell_4/splitЊ
 lstm_3/while/lstm_cell_4/SigmoidSigmoid'lstm_3/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 lstm_3/while/lstm_cell_4/SigmoidЎ
"lstm_3/while/lstm_cell_4/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_1Й
lstm_3/while/lstm_cell_4/mulMul&lstm_3/while/lstm_cell_4/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/while/lstm_cell_4/mulЎ
"lstm_3/while/lstm_cell_4/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_2Ч
lstm_3/while/lstm_cell_4/mul_1Mul$lstm_3/while/lstm_cell_4/Sigmoid:y:0&lstm_3/while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_3/while/lstm_cell_4/mul_1С
lstm_3/while/lstm_cell_4/add_1AddV2 lstm_3/while/lstm_cell_4/mul:z:0"lstm_3/while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_3/while/lstm_cell_4/add_1Ў
"lstm_3/while/lstm_cell_4/Sigmoid_3Sigmoid'lstm_3/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_3Љ
"lstm_3/while/lstm_cell_4/Sigmoid_4Sigmoid"lstm_3/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2$
"lstm_3/while/lstm_cell_4/Sigmoid_4Щ
lstm_3/while/lstm_cell_4/mul_2Mul&lstm_3/while/lstm_cell_4/Sigmoid_3:y:0&lstm_3/while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
lstm_3/while/lstm_cell_4/mul_2
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/IdentityЃ
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations0^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2И
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3Њ
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_4/mul_2:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/while/Identity_4Њ
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_4/add_1:z:00^lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_4_matmul_readvariableop_resource9lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0"Ф
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2b
/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
І
О
while_cond_12788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12788___redundant_placeholder03
/while_while_cond_12788___redundant_placeholder13
/while_while_cond_12788___redundant_placeholder23
/while_while_cond_12788___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
І
О
while_cond_11054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_11054___redundant_placeholder03
/while_while_cond_11054___redundant_placeholder13
/while_while_cond_11054___redundant_placeholder23
/while_while_cond_11054___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ЁB
є
while_body_15099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_3_matmul_readvariableop_resource_08
4while_lstm_cell_3_matmul_1_readvariableop_resource_07
3while_lstm_cell_3_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_3_matmul_readvariableop_resource6
2while_lstm_cell_3_matmul_1_readvariableop_resource5
1while_lstm_cell_3_biasadd_readvariableop_resourceЂ(while/lstm_cell_3/BiasAdd/ReadVariableOpЂ'while/lstm_cell_3/MatMul/ReadVariableOpЂ)while/lstm_cell_3/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOpг
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMulЫ
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOpМ
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMul_1Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/addФ
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOpР
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/BiasAddt
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_3/split
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_1
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_2Ћ
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_1Ѕ
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_3Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_3
while/lstm_cell_3/Sigmoid_4Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_4­
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_3:y:0while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
СD
г
A__inference_lstm_3_layer_call_and_return_conditional_losses_11734

inputs
lstm_cell_4_11652
lstm_cell_4_11654
lstm_cell_4_11656
identityЂ#lstm_cell_4/StatefulPartitionedCallЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_11652lstm_cell_4_11654lstm_cell_4_11656*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_112392%
#lstm_cell_4/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_11652lstm_cell_4_11654lstm_cell_4_11656*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11665*
condR
while_cond_11664*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_4/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
І
О
while_cond_12423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12423___redundant_placeholder03
/while_while_cond_12423___redundant_placeholder13
/while_while_cond_12423___redundant_placeholder23
/while_while_cond_12423___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
СD
г
A__inference_lstm_2_layer_call_and_return_conditional_losses_11124

inputs
lstm_cell_3_11042
lstm_cell_3_11044
lstm_cell_3_11046
identityЂ#lstm_cell_3/StatefulPartitionedCallЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_11042lstm_cell_3_11044lstm_cell_3_11046*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_106292%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_11042lstm_cell_3_11044lstm_cell_3_11046*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11055*
condR
while_cond_11054*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЁB
є
while_body_14618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_3_matmul_readvariableop_resource_08
4while_lstm_cell_3_matmul_1_readvariableop_resource_07
3while_lstm_cell_3_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_3_matmul_readvariableop_resource6
2while_lstm_cell_3_matmul_1_readvariableop_resource5
1while_lstm_cell_3_biasadd_readvariableop_resourceЂ(while/lstm_cell_3/BiasAdd/ReadVariableOpЂ'while/lstm_cell_3/MatMul/ReadVariableOpЂ)while/lstm_cell_3/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOpг
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMulЫ
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOpМ
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMul_1Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/addФ
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOpР
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/BiasAddt
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_3/split
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_1
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_2Ћ
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_1Ѕ
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_3Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_3
while/lstm_cell_3/Sigmoid_4Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_4­
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_3:y:0while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ОZ
ъ
A__inference_lstm_3_layer_call_and_return_conditional_losses_15386

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЉ
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMulЗ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpЅ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/addА
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЈ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_2
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_1
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_3Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_3
lstm_cell_4/Sigmoid_4Sigmoidlstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_4
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_3:y:0lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_15301*
condR
while_cond_15300*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs

Ю
$sequential_1_lstm_3_while_cond_10287D
@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counterJ
Fsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations)
%sequential_1_lstm_3_while_placeholder+
'sequential_1_lstm_3_while_placeholder_1+
'sequential_1_lstm_3_while_placeholder_2+
'sequential_1_lstm_3_while_placeholder_3F
Bsequential_1_lstm_3_while_less_sequential_1_lstm_3_strided_slice_1[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_10287___redundant_placeholder0[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_10287___redundant_placeholder1[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_10287___redundant_placeholder2[
Wsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_10287___redundant_placeholder3&
"sequential_1_lstm_3_while_identity
д
sequential_1/lstm_3/while/LessLess%sequential_1_lstm_3_while_placeholderBsequential_1_lstm_3_while_less_sequential_1_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_3/while/Less
"sequential_1/lstm_3/while/IdentityIdentity"sequential_1/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_3/while/Identity"Q
"sequential_1_lstm_3_while_identity+sequential_1/lstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
І
О
while_cond_12274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12274___redundant_placeholder03
/while_while_cond_12274___redundant_placeholder13
/while_while_cond_12274___redundant_placeholder23
/while_while_cond_12274___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
з
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_13074

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ЁB
є
while_body_15782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resourceЂ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpг
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMulЫ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpМ
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMul_1Г
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/addФ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpР
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_1
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_2Ћ
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_1Ѕ
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_3Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_3
while/lstm_cell_4/Sigmoid_4Sigmoidwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_4­
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_3:y:0while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
љ	
Ъ
lstm_2_while_cond_13651*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1A
=lstm_2_while_lstm_2_while_cond_13651___redundant_placeholder0A
=lstm_2_while_lstm_2_while_cond_13651___redundant_placeholder1A
=lstm_2_while_lstm_2_while_cond_13651___redundant_placeholder2A
=lstm_2_while_lstm_2_while_cond_13651___redundant_placeholder3
lstm_2_while_identity

lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Л
л
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_16838

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	№*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ<2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ<:џџџџџџџџџ<:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ<
"
_user_specified_name
states/1
Ы
ъ
,__inference_sequential_1_layer_call_fn_14550

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_135302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
љ	
Ъ
lstm_3_while_cond_14268*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1A
=lstm_3_while_lstm_3_while_cond_14268___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_14268___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_14268___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_14268___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ЁB
є
while_body_12424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_3_matmul_readvariableop_resource_08
4while_lstm_cell_3_matmul_1_readvariableop_resource_07
3while_lstm_cell_3_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_3_matmul_readvariableop_resource6
2while_lstm_cell_3_matmul_1_readvariableop_resource5
1while_lstm_cell_3_biasadd_readvariableop_resourceЂ(while/lstm_cell_3/BiasAdd/ReadVariableOpЂ'while/lstm_cell_3/MatMul/ReadVariableOpЂ)while/lstm_cell_3/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOpг
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMulЫ
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOpМ
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMul_1Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/addФ
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOpР
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/BiasAddt
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_3/split
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_1
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_2Ћ
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_1Ѕ
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_3Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_3
while/lstm_cell_3/Sigmoid_4Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_4­
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_3:y:0while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ЁB
є
while_body_12577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_3_matmul_readvariableop_resource_08
4while_lstm_cell_3_matmul_1_readvariableop_resource_07
3while_lstm_cell_3_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_3_matmul_readvariableop_resource6
2while_lstm_cell_3_matmul_1_readvariableop_resource5
1while_lstm_cell_3_biasadd_readvariableop_resourceЂ(while/lstm_cell_3/BiasAdd/ReadVariableOpЂ'while/lstm_cell_3/MatMul/ReadVariableOpЂ)while/lstm_cell_3/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOpг
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMulЫ
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOpМ
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMul_1Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/addФ
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOpР
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/BiasAddt
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_3/split
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_1
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_2Ћ
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_1Ѕ
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_3Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_3
while/lstm_cell_3/Sigmoid_4Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_4­
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_3:y:0while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
з
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_15223

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ЁB
є
while_body_12789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resourceЂ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpг
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMulЫ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpМ
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMul_1Г
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/addФ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpР
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_1
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_2Ћ
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_1Ѕ
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_3Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_3
while/lstm_cell_4/Sigmoid_4Sigmoidwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_4­
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_3:y:0while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Г
й
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_11816

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	№*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ<2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ<:џџџџџџџџџ<:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ<
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ<
 
_user_specified_namestates
Ё
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_15901

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeИ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ<2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ЁB
є
while_body_14771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_3_matmul_readvariableop_resource_08
4while_lstm_cell_3_matmul_1_readvariableop_resource_07
3while_lstm_cell_3_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_3_matmul_readvariableop_resource6
2while_lstm_cell_3_matmul_1_readvariableop_resource5
1while_lstm_cell_3_biasadd_readvariableop_resourceЂ(while/lstm_cell_3/BiasAdd/ReadVariableOpЂ'while/lstm_cell_3/MatMul/ReadVariableOpЂ)while/lstm_cell_3/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_3/MatMul/ReadVariableOpг
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMulЫ
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_3/MatMul_1/ReadVariableOpМ
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/MatMul_1Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/addФ
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_3/BiasAdd/ReadVariableOpР
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_3/BiasAddt
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dim
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_3/split
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_1
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_2Ћ
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_1Ѕ
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_3Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_3
while/lstm_cell_3/Sigmoid_4Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/Sigmoid_4­
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_3:y:0while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_3/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ЈB
є
while_body_13307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resourceЂ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpд
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_1
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_2Ћ
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_1Ѕ
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_3
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_4­
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
І
О
while_cond_16136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16136___redundant_placeholder03
/while_while_cond_16136___redundant_placeholder13
/while_while_cond_16136___redundant_placeholder23
/while_while_cond_16136___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
р
ъ
G__inference_sequential_1_layer_call_and_return_conditional_losses_13450	
input
lstm_2_13426
lstm_2_13428
lstm_2_13430
lstm_3_13434
lstm_3_13436
lstm_3_13438
output_13442
output_13444
output_13446
identityЂlstm_2/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputlstm_2_13426lstm_2_13428lstm_2_13430*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_126622 
lstm_2/StatefulPartitionedCallћ
dropout_2/PartitionedCallPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_127092
dropout_2/PartitionedCallЗ
lstm_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0lstm_3_13434lstm_3_13436lstm_3_13438*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_130272 
lstm_3/StatefulPartitionedCallћ
dropout_3/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_130742
dropout_3/PartitionedCallГ
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0output_13442output_13444output_13446*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_133922 
output/StatefulPartitionedCallо
IdentityIdentity'output/StatefulPartitionedCall:output:0^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ<

_user_specified_nameinput
Ш
щ
,__inference_sequential_1_layer_call_fn_13501	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityЂStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_134802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ<

_user_specified_nameinput
`
є
$sequential_1_lstm_2_while_body_10138D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3C
?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0
{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_1_lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0L
Hsequential_1_lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0K
Gsequential_1_lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0&
"sequential_1_lstm_2_while_identity(
$sequential_1_lstm_2_while_identity_1(
$sequential_1_lstm_2_while_identity_2(
$sequential_1_lstm_2_while_identity_3(
$sequential_1_lstm_2_while_identity_4(
$sequential_1_lstm_2_while_identity_5A
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1}
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensorH
Dsequential_1_lstm_2_while_lstm_cell_3_matmul_readvariableop_resourceJ
Fsequential_1_lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resourceI
Esequential_1_lstm_2_while_lstm_cell_3_biasadd_readvariableop_resourceЂ<sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpЂ;sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpЂ=sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpы
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2M
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeЫ
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_2_while_placeholderTsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem
;sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOpFsequential_1_lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02=
;sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOpЃ
,sequential_1/lstm_2/while/lstm_cell_3/MatMulMatMulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2.
,sequential_1/lstm_2/while/lstm_cell_3/MatMul
=sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOpHsequential_1_lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02?
=sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp
.sequential_1/lstm_2/while/lstm_cell_3/MatMul_1MatMul'sequential_1_lstm_2_while_placeholder_2Esequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx20
.sequential_1/lstm_2/while/lstm_cell_3/MatMul_1
)sequential_1/lstm_2/while/lstm_cell_3/addAddV26sequential_1/lstm_2/while/lstm_cell_3/MatMul:product:08sequential_1/lstm_2/while/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2+
)sequential_1/lstm_2/while/lstm_cell_3/add
<sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02>
<sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp
-sequential_1/lstm_2/while/lstm_cell_3/BiasAddBiasAdd-sequential_1/lstm_2/while/lstm_cell_3/add:z:0Dsequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2/
-sequential_1/lstm_2/while/lstm_cell_3/BiasAdd
+sequential_1/lstm_2/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_1/lstm_2/while/lstm_cell_3/ConstА
5sequential_1/lstm_2/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_2/while/lstm_cell_3/split/split_dimз
+sequential_1/lstm_2/while/lstm_cell_3/splitSplit>sequential_1/lstm_2/while/lstm_cell_3/split/split_dim:output:06sequential_1/lstm_2/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2-
+sequential_1/lstm_2/while/lstm_cell_3/splitб
-sequential_1/lstm_2/while/lstm_cell_3/SigmoidSigmoid4sequential_1/lstm_2/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-sequential_1/lstm_2/while/lstm_cell_3/Sigmoidе
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_1Sigmoid4sequential_1/lstm_2/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_1э
)sequential_1/lstm_2/while/lstm_cell_3/mulMul3sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_1:y:0'sequential_1_lstm_2_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_2/while/lstm_cell_3/mulе
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_2Sigmoid4sequential_1/lstm_2/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_2ћ
+sequential_1/lstm_2/while/lstm_cell_3/mul_1Mul1sequential_1/lstm_2/while/lstm_cell_3/Sigmoid:y:03sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_2/while/lstm_cell_3/mul_1ѕ
+sequential_1/lstm_2/while/lstm_cell_3/add_1AddV2-sequential_1/lstm_2/while/lstm_cell_3/mul:z:0/sequential_1/lstm_2/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_2/while/lstm_cell_3/add_1е
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_3Sigmoid4sequential_1/lstm_2/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_3а
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_4Sigmoid/sequential_1/lstm_2/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_4§
+sequential_1/lstm_2/while/lstm_cell_3/mul_2Mul3sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_3:y:03sequential_1/lstm_2/while/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_2/while/lstm_cell_3/mul_2У
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_2_while_placeholder_1%sequential_1_lstm_2_while_placeholder/sequential_1/lstm_2/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem
sequential_1/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_2/while/add/yЙ
sequential_1/lstm_2/while/addAddV2%sequential_1_lstm_2_while_placeholder(sequential_1/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/while/add
!sequential_1/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_2/while/add_1/yк
sequential_1/lstm_2/while/add_1AddV2@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counter*sequential_1/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/while/add_1з
"sequential_1/lstm_2/while/IdentityIdentity#sequential_1/lstm_2/while/add_1:z:0=^sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identityў
$sequential_1/lstm_2/while/Identity_1IdentityFsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations=^sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_1й
$sequential_1/lstm_2/while/Identity_2Identity!sequential_1/lstm_2/while/add:z:0=^sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_2
$sequential_1/lstm_2/while/Identity_3IdentityNsequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_3ј
$sequential_1/lstm_2/while/Identity_4Identity/sequential_1/lstm_2/while/lstm_cell_3/mul_2:z:0=^sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2&
$sequential_1/lstm_2/while/Identity_4ј
$sequential_1/lstm_2/while/Identity_5Identity/sequential_1/lstm_2/while/lstm_cell_3/add_1:z:0=^sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2&
$sequential_1/lstm_2/while/Identity_5"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0"U
$sequential_1_lstm_2_while_identity_1-sequential_1/lstm_2/while/Identity_1:output:0"U
$sequential_1_lstm_2_while_identity_2-sequential_1/lstm_2/while/Identity_2:output:0"U
$sequential_1_lstm_2_while_identity_3-sequential_1/lstm_2/while/Identity_3:output:0"U
$sequential_1_lstm_2_while_identity_4-sequential_1/lstm_2/while/Identity_4:output:0"U
$sequential_1_lstm_2_while_identity_5-sequential_1/lstm_2/while/Identity_5:output:0"
Esequential_1_lstm_2_while_lstm_cell_3_biasadd_readvariableop_resourceGsequential_1_lstm_2_while_lstm_cell_3_biasadd_readvariableop_resource_0"
Fsequential_1_lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resourceHsequential_1_lstm_2_while_lstm_cell_3_matmul_1_readvariableop_resource_0"
Dsequential_1_lstm_2_while_lstm_cell_3_matmul_readvariableop_resourceFsequential_1_lstm_2_while_lstm_cell_3_matmul_readvariableop_resource_0"
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0"ј
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2|
<sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp<sequential_1/lstm_2/while/lstm_cell_3/BiasAdd/ReadVariableOp2z
;sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp;sequential_1/lstm_2/while/lstm_cell_3/MatMul/ReadVariableOp2~
=sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp=sequential_1/lstm_2/while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ЁB
є
while_body_15454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resourceЂ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpг
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMulЫ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpМ
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMul_1Г
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/addФ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpР
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_1
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_2Ћ
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_1Ѕ
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_3Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_3
while/lstm_cell_4/Sigmoid_4Sigmoidwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_4­
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_3:y:0while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ОZ
ъ
A__inference_lstm_3_layer_call_and_return_conditional_losses_15539

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЉ
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMulЗ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpЅ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/addА
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЈ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_2
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_1
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_3Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_3
lstm_cell_4/Sigmoid_4Sigmoidlstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_4
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_3:y:0lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_15454*
condR
while_cond_15453*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
І
О
while_cond_15781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15781___redundant_placeholder03
/while_while_cond_15781___redundant_placeholder13
/while_while_cond_15781___redundant_placeholder23
/while_while_cond_15781___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ф
В
G__inference_sequential_1_layer_call_and_return_conditional_losses_13423	
input
lstm_2_12685
lstm_2_12687
lstm_2_12689
lstm_3_13050
lstm_3_13052
lstm_3_13054
output_13415
output_13417
output_13419
identityЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputlstm_2_12685lstm_2_12687lstm_2_12689*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_125092 
lstm_2/StatefulPartitionedCall
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_127042#
!dropout_2/StatefulPartitionedCallП
lstm_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0lstm_3_13050lstm_3_13052lstm_3_13054*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_128742 
lstm_3/StatefulPartitionedCallЗ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_130692#
!dropout_3/StatefulPartitionedCallЛ
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0output_13415output_13417output_13419*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_132392 
output/StatefulPartitionedCallІ
IdentityIdentity'output/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ<

_user_specified_nameinput
§Z
ь
A__inference_lstm_2_layer_call_and_return_conditional_losses_14703
inputs_0.
*lstm_cell_3_matmul_readvariableop_resource0
,lstm_cell_3_matmul_1_readvariableop_resource/
+lstm_cell_3_biasadd_readvariableop_resource
identityЂ"lstm_cell_3/BiasAdd/ReadVariableOpЂ!lstm_cell_3/MatMul/ReadVariableOpЂ#lstm_cell_3/MatMul_1/ReadVariableOpЂwhileF
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOpЉ
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMulЗ
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOpЅ
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMul_1
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/addА
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOpЈ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/BiasAddh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimя
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_3/split
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_2
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_1
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_3Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_3
lstm_cell_3/Sigmoid_4Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_4
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_3:y:0lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_14618*
condR
while_cond_14617*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeч
IdentityIdentitytranspose_1:y:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
фL
д	
output_while_body_14419*
&output_while_output_while_loop_counter0
,output_while_output_while_maximum_iterations
output_while_placeholder
output_while_placeholder_1
output_while_placeholder_2
output_while_placeholder_3)
%output_while_output_strided_slice_1_0e
aoutput_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor_0=
9output_while_lstm_cell_5_matmul_readvariableop_resource_0?
;output_while_lstm_cell_5_matmul_1_readvariableop_resource_0>
:output_while_lstm_cell_5_biasadd_readvariableop_resource_0
output_while_identity
output_while_identity_1
output_while_identity_2
output_while_identity_3
output_while_identity_4
output_while_identity_5'
#output_while_output_strided_slice_1c
_output_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor;
7output_while_lstm_cell_5_matmul_readvariableop_resource=
9output_while_lstm_cell_5_matmul_1_readvariableop_resource<
8output_while_lstm_cell_5_biasadd_readvariableop_resourceЂ/output/while/lstm_cell_5/BiasAdd/ReadVariableOpЂ.output/while/lstm_cell_5/MatMul/ReadVariableOpЂ0output/while/lstm_cell_5/MatMul_1/ReadVariableOpб
>output/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>output/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0output/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemaoutput_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor_0output_while_placeholderGoutput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0output/while/TensorArrayV2Read/TensorListGetItemл
.output/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9output_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype020
.output/while/lstm_cell_5/MatMul/ReadVariableOp№
output/while/lstm_cell_5/MatMulMatMul7output/while/TensorArrayV2Read/TensorListGetItem:item:06output/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2!
output/while/lstm_cell_5/MatMulс
0output/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;output_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype022
0output/while/lstm_cell_5/MatMul_1/ReadVariableOpй
!output/while/lstm_cell_5/MatMul_1MatMuloutput_while_placeholder_28output/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2#
!output/while/lstm_cell_5/MatMul_1а
output/while/lstm_cell_5/addAddV2)output/while/lstm_cell_5/MatMul:product:0+output/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/while/lstm_cell_5/addк
/output/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:output_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype021
/output/while/lstm_cell_5/BiasAdd/ReadVariableOpн
 output/while/lstm_cell_5/BiasAddBiasAdd output/while/lstm_cell_5/add:z:07output/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2"
 output/while/lstm_cell_5/BiasAdd
output/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
output/while/lstm_cell_5/Const
(output/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(output/while/lstm_cell_5/split/split_dimЃ
output/while/lstm_cell_5/splitSplit1output/while/lstm_cell_5/split/split_dim:output:0)output/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2 
output/while/lstm_cell_5/splitЊ
 output/while/lstm_cell_5/SigmoidSigmoid'output/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2"
 output/while/lstm_cell_5/SigmoidЎ
"output/while/lstm_cell_5/Sigmoid_1Sigmoid'output/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_1Й
output/while/lstm_cell_5/mulMul&output/while/lstm_cell_5/Sigmoid_1:y:0output_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/while/lstm_cell_5/mulЎ
"output/while/lstm_cell_5/Sigmoid_2Sigmoid'output/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_2Ч
output/while/lstm_cell_5/mul_1Mul$output/while/lstm_cell_5/Sigmoid:y:0&output/while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2 
output/while/lstm_cell_5/mul_1С
output/while/lstm_cell_5/add_1AddV2 output/while/lstm_cell_5/mul:z:0"output/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2 
output/while/lstm_cell_5/add_1Ў
"output/while/lstm_cell_5/Sigmoid_3Sigmoid'output/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_3Љ
"output/while/lstm_cell_5/Sigmoid_4Sigmoid"output/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2$
"output/while/lstm_cell_5/Sigmoid_4Щ
output/while/lstm_cell_5/mul_2Mul&output/while/lstm_cell_5/Sigmoid_3:y:0&output/while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2 
output/while/lstm_cell_5/mul_2
1output/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemoutput_while_placeholder_1output_while_placeholder"output/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype023
1output/while/TensorArrayV2Write/TensorListSetItemj
output/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
output/while/add/y
output/while/addAddV2output_while_placeholderoutput/while/add/y:output:0*
T0*
_output_shapes
: 2
output/while/addn
output/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
output/while/add_1/y
output/while/add_1AddV2&output_while_output_while_loop_counteroutput/while/add_1/y:output:0*
T0*
_output_shapes
: 2
output/while/add_1
output/while/IdentityIdentityoutput/while/add_1:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/IdentityЃ
output/while/Identity_1Identity,output_while_output_while_maximum_iterations0^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/Identity_1
output/while/Identity_2Identityoutput/while/add:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/Identity_2И
output/while/Identity_3IdentityAoutput/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
output/while/Identity_3Њ
output/while/Identity_4Identity"output/while/lstm_cell_5/mul_2:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/while/Identity_4Њ
output/while/Identity_5Identity"output/while/lstm_cell_5/add_1:z:00^output/while/lstm_cell_5/BiasAdd/ReadVariableOp/^output/while/lstm_cell_5/MatMul/ReadVariableOp1^output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/while/Identity_5"7
output_while_identityoutput/while/Identity:output:0";
output_while_identity_1 output/while/Identity_1:output:0";
output_while_identity_2 output/while/Identity_2:output:0";
output_while_identity_3 output/while/Identity_3:output:0";
output_while_identity_4 output/while/Identity_4:output:0";
output_while_identity_5 output/while/Identity_5:output:0"v
8output_while_lstm_cell_5_biasadd_readvariableop_resource:output_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9output_while_lstm_cell_5_matmul_1_readvariableop_resource;output_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7output_while_lstm_cell_5_matmul_readvariableop_resource9output_while_lstm_cell_5_matmul_readvariableop_resource_0"L
#output_while_output_strided_slice_1%output_while_output_strided_slice_1_0"Ф
_output_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensoraoutput_while_tensorarrayv2read_tensorlistgetitem_output_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2b
/output/while/lstm_cell_5/BiasAdd/ReadVariableOp/output/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.output/while/lstm_cell_5/MatMul/ReadVariableOp.output/while/lstm_cell_5/MatMul/ReadVariableOp2d
0output/while/lstm_cell_5/MatMul_1/ReadVariableOp0output/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
§Z
ь
A__inference_lstm_3_layer_call_and_return_conditional_losses_15867
inputs_0.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileF
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЉ
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMulЗ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpЅ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/addА
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЈ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_2
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_1
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_3Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_3
lstm_cell_4/Sigmoid_4Sigmoidlstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_4
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_3:y:0lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_15782*
condR
while_cond_15781*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeч
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ЈB
є
while_body_16137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resourceЂ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpд
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_1
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_2Ћ
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_1Ѕ
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_3
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_4­
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
ЪZ
ъ
A__inference_output_layer_call_and_return_conditional_losses_16550

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2В
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЊ
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_2
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_1
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_3
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_4
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_16465*
condR
while_cond_16464*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
ЈB
є
while_body_16465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resourceЂ(while/lstm_cell_5/BiasAdd/ReadVariableOpЂ'while/lstm_cell_5/MatMul/ReadVariableOpЂ)while/lstm_cell_5/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЦ
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOpд
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMulЬ
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOpН
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/MatMul_1Д
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/addХ
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOpС
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
while/lstm_cell_5/split
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_1
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_2Ћ
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_1Ѕ
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/add_1
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_3
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/Sigmoid_4­
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/lstm_cell_5/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
Ќ
й
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_10596

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
З
Ы
+__inference_lstm_cell_4_layer_call_fn_16772

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_112392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
ОZ
ъ
A__inference_lstm_3_layer_call_and_return_conditional_losses_12874

inputs.
*lstm_cell_4_matmul_readvariableop_resource0
,lstm_cell_4_matmul_1_readvariableop_resource/
+lstm_cell_4_biasadd_readvariableop_resource
identityЂ"lstm_cell_4/BiasAdd/ReadVariableOpЂ!lstm_cell_4/MatMul/ReadVariableOpЂ#lstm_cell_4/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_4/MatMul/ReadVariableOpЉ
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMulЗ
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_4/MatMul_1/ReadVariableOpЅ
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/MatMul_1
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/addА
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_4/BiasAdd/ReadVariableOpЈ
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_4/BiasAddh
lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/Const|
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_4/split/split_dimя
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_4/split
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_1
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_2
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_1
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/add_1
lstm_cell_4/Sigmoid_3Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_3
lstm_cell_4/Sigmoid_4Sigmoidlstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/Sigmoid_4
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_3:y:0lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_4/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_12789*
condR
while_cond_12788*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
І
О
while_cond_15300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15300___redundant_placeholder03
/while_while_cond_15300___redundant_placeholder13
/while_while_cond_15300___redundant_placeholder23
/while_while_cond_15300___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:


&__inference_output_layer_call_fn_16244
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_123442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0


&__inference_lstm_2_layer_call_fn_15195

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_125092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
`
є
$sequential_1_output_while_body_10438D
@sequential_1_output_while_sequential_1_output_while_loop_counterJ
Fsequential_1_output_while_sequential_1_output_while_maximum_iterations)
%sequential_1_output_while_placeholder+
'sequential_1_output_while_placeholder_1+
'sequential_1_output_while_placeholder_2+
'sequential_1_output_while_placeholder_3C
?sequential_1_output_while_sequential_1_output_strided_slice_1_0
{sequential_1_output_while_tensorarrayv2read_tensorlistgetitem_sequential_1_output_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_1_output_while_lstm_cell_5_matmul_readvariableop_resource_0L
Hsequential_1_output_while_lstm_cell_5_matmul_1_readvariableop_resource_0K
Gsequential_1_output_while_lstm_cell_5_biasadd_readvariableop_resource_0&
"sequential_1_output_while_identity(
$sequential_1_output_while_identity_1(
$sequential_1_output_while_identity_2(
$sequential_1_output_while_identity_3(
$sequential_1_output_while_identity_4(
$sequential_1_output_while_identity_5A
=sequential_1_output_while_sequential_1_output_strided_slice_1}
ysequential_1_output_while_tensorarrayv2read_tensorlistgetitem_sequential_1_output_tensorarrayunstack_tensorlistfromtensorH
Dsequential_1_output_while_lstm_cell_5_matmul_readvariableop_resourceJ
Fsequential_1_output_while_lstm_cell_5_matmul_1_readvariableop_resourceI
Esequential_1_output_while_lstm_cell_5_biasadd_readvariableop_resourceЂ<sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOpЂ;sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOpЂ=sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOpы
Ksequential_1/output/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2M
Ksequential_1/output/while/TensorArrayV2Read/TensorListGetItem/element_shapeЫ
=sequential_1/output/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_output_while_tensorarrayv2read_tensorlistgetitem_sequential_1_output_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_output_while_placeholderTsequential_1/output/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02?
=sequential_1/output/while/TensorArrayV2Read/TensorListGetItem
;sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOpFsequential_1_output_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	№*
dtype02=
;sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOpЄ
,sequential_1/output/while/lstm_cell_5/MatMulMatMulDsequential_1/output/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2.
,sequential_1/output/while/lstm_cell_5/MatMul
=sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOpHsequential_1_output_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	<№*
dtype02?
=sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp
.sequential_1/output/while/lstm_cell_5/MatMul_1MatMul'sequential_1_output_while_placeholder_2Esequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№20
.sequential_1/output/while/lstm_cell_5/MatMul_1
)sequential_1/output/while/lstm_cell_5/addAddV26sequential_1/output/while/lstm_cell_5/MatMul:product:08sequential_1/output/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2+
)sequential_1/output/while/lstm_cell_5/add
<sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_output_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:№*
dtype02>
<sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp
-sequential_1/output/while/lstm_cell_5/BiasAddBiasAdd-sequential_1/output/while/lstm_cell_5/add:z:0Dsequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2/
-sequential_1/output/while/lstm_cell_5/BiasAdd
+sequential_1/output/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_1/output/while/lstm_cell_5/ConstА
5sequential_1/output/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/output/while/lstm_cell_5/split/split_dimз
+sequential_1/output/while/lstm_cell_5/splitSplit>sequential_1/output/while/lstm_cell_5/split/split_dim:output:06sequential_1/output/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2-
+sequential_1/output/while/lstm_cell_5/splitб
-sequential_1/output/while/lstm_cell_5/SigmoidSigmoid4sequential_1/output/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2/
-sequential_1/output/while/lstm_cell_5/Sigmoidе
/sequential_1/output/while/lstm_cell_5/Sigmoid_1Sigmoid4sequential_1/output/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<21
/sequential_1/output/while/lstm_cell_5/Sigmoid_1э
)sequential_1/output/while/lstm_cell_5/mulMul3sequential_1/output/while/lstm_cell_5/Sigmoid_1:y:0'sequential_1_output_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ<2+
)sequential_1/output/while/lstm_cell_5/mulе
/sequential_1/output/while/lstm_cell_5/Sigmoid_2Sigmoid4sequential_1/output/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<21
/sequential_1/output/while/lstm_cell_5/Sigmoid_2ћ
+sequential_1/output/while/lstm_cell_5/mul_1Mul1sequential_1/output/while/lstm_cell_5/Sigmoid:y:03sequential_1/output/while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2-
+sequential_1/output/while/lstm_cell_5/mul_1ѕ
+sequential_1/output/while/lstm_cell_5/add_1AddV2-sequential_1/output/while/lstm_cell_5/mul:z:0/sequential_1/output/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2-
+sequential_1/output/while/lstm_cell_5/add_1е
/sequential_1/output/while/lstm_cell_5/Sigmoid_3Sigmoid4sequential_1/output/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<21
/sequential_1/output/while/lstm_cell_5/Sigmoid_3а
/sequential_1/output/while/lstm_cell_5/Sigmoid_4Sigmoid/sequential_1/output/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<21
/sequential_1/output/while/lstm_cell_5/Sigmoid_4§
+sequential_1/output/while/lstm_cell_5/mul_2Mul3sequential_1/output/while/lstm_cell_5/Sigmoid_3:y:03sequential_1/output/while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2-
+sequential_1/output/while/lstm_cell_5/mul_2У
>sequential_1/output/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_output_while_placeholder_1%sequential_1_output_while_placeholder/sequential_1/output/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/output/while/TensorArrayV2Write/TensorListSetItem
sequential_1/output/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/output/while/add/yЙ
sequential_1/output/while/addAddV2%sequential_1_output_while_placeholder(sequential_1/output/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/output/while/add
!sequential_1/output/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/output/while/add_1/yк
sequential_1/output/while/add_1AddV2@sequential_1_output_while_sequential_1_output_while_loop_counter*sequential_1/output/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/output/while/add_1з
"sequential_1/output/while/IdentityIdentity#sequential_1/output/while/add_1:z:0=^sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/output/while/Identityў
$sequential_1/output/while/Identity_1IdentityFsequential_1_output_while_sequential_1_output_while_maximum_iterations=^sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/output/while/Identity_1й
$sequential_1/output/while/Identity_2Identity!sequential_1/output/while/add:z:0=^sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/output/while/Identity_2
$sequential_1/output/while/Identity_3IdentityNsequential_1/output/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/output/while/Identity_3ј
$sequential_1/output/while/Identity_4Identity/sequential_1/output/while/lstm_cell_5/mul_2:z:0=^sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2&
$sequential_1/output/while/Identity_4ј
$sequential_1/output/while/Identity_5Identity/sequential_1/output/while/lstm_cell_5/add_1:z:0=^sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ<2&
$sequential_1/output/while/Identity_5"Q
"sequential_1_output_while_identity+sequential_1/output/while/Identity:output:0"U
$sequential_1_output_while_identity_1-sequential_1/output/while/Identity_1:output:0"U
$sequential_1_output_while_identity_2-sequential_1/output/while/Identity_2:output:0"U
$sequential_1_output_while_identity_3-sequential_1/output/while/Identity_3:output:0"U
$sequential_1_output_while_identity_4-sequential_1/output/while/Identity_4:output:0"U
$sequential_1_output_while_identity_5-sequential_1/output/while/Identity_5:output:0"
Esequential_1_output_while_lstm_cell_5_biasadd_readvariableop_resourceGsequential_1_output_while_lstm_cell_5_biasadd_readvariableop_resource_0"
Fsequential_1_output_while_lstm_cell_5_matmul_1_readvariableop_resourceHsequential_1_output_while_lstm_cell_5_matmul_1_readvariableop_resource_0"
Dsequential_1_output_while_lstm_cell_5_matmul_readvariableop_resourceFsequential_1_output_while_lstm_cell_5_matmul_readvariableop_resource_0"
=sequential_1_output_while_sequential_1_output_strided_slice_1?sequential_1_output_while_sequential_1_output_strided_slice_1_0"ј
ysequential_1_output_while_tensorarrayv2read_tensorlistgetitem_sequential_1_output_tensorarrayunstack_tensorlistfromtensor{sequential_1_output_while_tensorarrayv2read_tensorlistgetitem_sequential_1_output_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : :::2|
<sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp<sequential_1/output/while/lstm_cell_5/BiasAdd/ReadVariableOp2z
;sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp;sequential_1/output/while/lstm_cell_5/MatMul/ReadVariableOp2~
=sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp=sequential_1/output/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
: 
І
О
while_cond_12576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12576___redundant_placeholder03
/while_while_cond_12576___redundant_placeholder13
/while_while_cond_12576___redundant_placeholder23
/while_while_cond_12576___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
љ	
Ъ
lstm_3_while_cond_13808*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1A
=lstm_3_while_lstm_3_while_cond_13808___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_13808___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_13808___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_13808___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ЪZ
ъ
A__inference_output_layer_call_and_return_conditional_losses_13392

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2В
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЊ
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_2
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_1
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_3
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_4
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_13307*
condR
while_cond_13306*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
І
О
while_cond_14617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14617___redundant_placeholder03
/while_while_cond_14617___redundant_placeholder13
/while_while_cond_14617___redundant_placeholder23
/while_while_cond_14617___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
І
О
while_cond_11664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_11664___redundant_placeholder03
/while_while_cond_11664___redundant_placeholder13
/while_while_cond_11664___redundant_placeholder23
/while_while_cond_11664___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
І
О
while_cond_13306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13306___redundant_placeholder03
/while_while_cond_13306___redundant_placeholder13
/while_while_cond_13306___redundant_placeholder23
/while_while_cond_13306___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
І
О
while_cond_15983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15983___redundant_placeholder03
/while_while_cond_15983___redundant_placeholder13
/while_while_cond_15983___redundant_placeholder23
/while_while_cond_15983___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
Ё
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_13069

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeИ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ<2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Ќ
й
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_11206

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates

Ю
$sequential_1_lstm_2_while_cond_10137D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3F
Bsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_10137___redundant_placeholder0[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_10137___redundant_placeholder1[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_10137___redundant_placeholder2[
Wsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_10137___redundant_placeholder3&
"sequential_1_lstm_2_while_identity
д
sequential_1/lstm_2/while/LessLess%sequential_1_lstm_2_while_placeholderBsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/while/Less
"sequential_1/lstm_2/while/IdentityIdentity"sequential_1/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
`
є
$sequential_1_lstm_3_while_body_10288D
@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counterJ
Fsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations)
%sequential_1_lstm_3_while_placeholder+
'sequential_1_lstm_3_while_placeholder_1+
'sequential_1_lstm_3_while_placeholder_2+
'sequential_1_lstm_3_while_placeholder_3C
?sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1_0
{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_1_lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0L
Hsequential_1_lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0K
Gsequential_1_lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0&
"sequential_1_lstm_3_while_identity(
$sequential_1_lstm_3_while_identity_1(
$sequential_1_lstm_3_while_identity_2(
$sequential_1_lstm_3_while_identity_3(
$sequential_1_lstm_3_while_identity_4(
$sequential_1_lstm_3_while_identity_5A
=sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1}
ysequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensorH
Dsequential_1_lstm_3_while_lstm_cell_4_matmul_readvariableop_resourceJ
Fsequential_1_lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resourceI
Esequential_1_lstm_3_while_lstm_cell_4_biasadd_readvariableop_resourceЂ<sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpЂ;sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpЂ=sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpы
Ksequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2M
Ksequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeЫ
=sequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_3_while_placeholderTsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02?
=sequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem
;sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOpFsequential_1_lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02=
;sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOpЃ
,sequential_1/lstm_3/while/lstm_cell_4/MatMulMatMulDsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2.
,sequential_1/lstm_3/while/lstm_cell_4/MatMul
=sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOpHsequential_1_lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02?
=sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp
.sequential_1/lstm_3/while/lstm_cell_4/MatMul_1MatMul'sequential_1_lstm_3_while_placeholder_2Esequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx20
.sequential_1/lstm_3/while/lstm_cell_4/MatMul_1
)sequential_1/lstm_3/while/lstm_cell_4/addAddV26sequential_1/lstm_3/while/lstm_cell_4/MatMul:product:08sequential_1/lstm_3/while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2+
)sequential_1/lstm_3/while/lstm_cell_4/add
<sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02>
<sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp
-sequential_1/lstm_3/while/lstm_cell_4/BiasAddBiasAdd-sequential_1/lstm_3/while/lstm_cell_4/add:z:0Dsequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2/
-sequential_1/lstm_3/while/lstm_cell_4/BiasAdd
+sequential_1/lstm_3/while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_1/lstm_3/while/lstm_cell_4/ConstА
5sequential_1/lstm_3/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_3/while/lstm_cell_4/split/split_dimз
+sequential_1/lstm_3/while/lstm_cell_4/splitSplit>sequential_1/lstm_3/while/lstm_cell_4/split/split_dim:output:06sequential_1/lstm_3/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2-
+sequential_1/lstm_3/while/lstm_cell_4/splitб
-sequential_1/lstm_3/while/lstm_cell_4/SigmoidSigmoid4sequential_1/lstm_3/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-sequential_1/lstm_3/while/lstm_cell_4/Sigmoidе
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_1Sigmoid4sequential_1/lstm_3/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_1э
)sequential_1/lstm_3/while/lstm_cell_4/mulMul3sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_1:y:0'sequential_1_lstm_3_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_3/while/lstm_cell_4/mulе
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_2Sigmoid4sequential_1/lstm_3/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_2ћ
+sequential_1/lstm_3/while/lstm_cell_4/mul_1Mul1sequential_1/lstm_3/while/lstm_cell_4/Sigmoid:y:03sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_3/while/lstm_cell_4/mul_1ѕ
+sequential_1/lstm_3/while/lstm_cell_4/add_1AddV2-sequential_1/lstm_3/while/lstm_cell_4/mul:z:0/sequential_1/lstm_3/while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_3/while/lstm_cell_4/add_1е
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_3Sigmoid4sequential_1/lstm_3/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_3а
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_4Sigmoid/sequential_1/lstm_3/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_4§
+sequential_1/lstm_3/while/lstm_cell_4/mul_2Mul3sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_3:y:03sequential_1/lstm_3/while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_3/while/lstm_cell_4/mul_2У
>sequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_3_while_placeholder_1%sequential_1_lstm_3_while_placeholder/sequential_1/lstm_3/while/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItem
sequential_1/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_3/while/add/yЙ
sequential_1/lstm_3/while/addAddV2%sequential_1_lstm_3_while_placeholder(sequential_1/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_3/while/add
!sequential_1/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_3/while/add_1/yк
sequential_1/lstm_3/while/add_1AddV2@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counter*sequential_1/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_3/while/add_1з
"sequential_1/lstm_3/while/IdentityIdentity#sequential_1/lstm_3/while/add_1:z:0=^sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_3/while/Identityў
$sequential_1/lstm_3/while/Identity_1IdentityFsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations=^sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_3/while/Identity_1й
$sequential_1/lstm_3/while/Identity_2Identity!sequential_1/lstm_3/while/add:z:0=^sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_3/while/Identity_2
$sequential_1/lstm_3/while/Identity_3IdentityNsequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_3/while/Identity_3ј
$sequential_1/lstm_3/while/Identity_4Identity/sequential_1/lstm_3/while/lstm_cell_4/mul_2:z:0=^sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2&
$sequential_1/lstm_3/while/Identity_4ј
$sequential_1/lstm_3/while/Identity_5Identity/sequential_1/lstm_3/while/lstm_cell_4/add_1:z:0=^sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp<^sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp>^sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2&
$sequential_1/lstm_3/while/Identity_5"Q
"sequential_1_lstm_3_while_identity+sequential_1/lstm_3/while/Identity:output:0"U
$sequential_1_lstm_3_while_identity_1-sequential_1/lstm_3/while/Identity_1:output:0"U
$sequential_1_lstm_3_while_identity_2-sequential_1/lstm_3/while/Identity_2:output:0"U
$sequential_1_lstm_3_while_identity_3-sequential_1/lstm_3/while/Identity_3:output:0"U
$sequential_1_lstm_3_while_identity_4-sequential_1/lstm_3/while/Identity_4:output:0"U
$sequential_1_lstm_3_while_identity_5-sequential_1/lstm_3/while/Identity_5:output:0"
Esequential_1_lstm_3_while_lstm_cell_4_biasadd_readvariableop_resourceGsequential_1_lstm_3_while_lstm_cell_4_biasadd_readvariableop_resource_0"
Fsequential_1_lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resourceHsequential_1_lstm_3_while_lstm_cell_4_matmul_1_readvariableop_resource_0"
Dsequential_1_lstm_3_while_lstm_cell_4_matmul_readvariableop_resourceFsequential_1_lstm_3_while_lstm_cell_4_matmul_readvariableop_resource_0"
=sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1?sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1_0"ј
ysequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2|
<sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp<sequential_1/lstm_3/while/lstm_cell_4/BiasAdd/ReadVariableOp2z
;sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp;sequential_1/lstm_3/while/lstm_cell_4/MatMul/ReadVariableOp2~
=sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp=sequential_1/lstm_3/while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ЪZ
ъ
A__inference_output_layer_call_and_return_conditional_losses_16397

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identityЂ"lstm_cell_5/BiasAdd/ReadVariableOpЂ!lstm_cell_5/MatMul/ReadVariableOpЂ#lstm_cell_5/MatMul_1/ReadVariableOpЂwhileD
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
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
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
value	B :<2
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
:џџџџџџџџџ<2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2В
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOpЊ
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMulИ
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOpІ
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/MatMul_1
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/addБ
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOpЉ
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dimя
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
lstm_cell_5/split
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_1
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_2
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_1
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/add_1
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_3
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/Sigmoid_4
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
lstm_cell_5/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_16312*
condR
while_cond_16311*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ<*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeу
IdentityIdentitystrided_slice_3:output:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
І
О
while_cond_12142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12142___redundant_placeholder03
/while_while_cond_12142___redundant_placeholder13
/while_while_cond_12142___redundant_placeholder23
/while_while_cond_12142___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
І
О
while_cond_16311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16311___redundant_placeholder03
/while_while_cond_16311___redundant_placeholder13
/while_while_cond_16311___redundant_placeholder23
/while_while_cond_16311___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ<:џџџџџџџџџ<: ::::: 
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
:џџџџџџџџџ<:-)
'
_output_shapes
:џџџџџџџџџ<:

_output_shapes
: :

_output_shapes
:
ЁB
є
while_body_15629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_4_matmul_readvariableop_resource_08
4while_lstm_cell_4_matmul_1_readvariableop_resource_07
3while_lstm_cell_4_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_4_matmul_readvariableop_resource6
2while_lstm_cell_4_matmul_1_readvariableop_resource5
1while_lstm_cell_4_biasadd_readvariableop_resourceЂ(while/lstm_cell_4/BiasAdd/ReadVariableOpЂ'while/lstm_cell_4/MatMul/ReadVariableOpЂ)while/lstm_cell_4/MatMul_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemХ
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype02)
'while/lstm_cell_4/MatMul/ReadVariableOpг
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMulЫ
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype02+
)while/lstm_cell_4/MatMul_1/ReadVariableOpМ
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/MatMul_1Г
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/addФ
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype02*
(while/lstm_cell_4/BiasAdd/ReadVariableOpР
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
while/lstm_cell_4/BiasAddt
while/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_4/Const
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_4/split/split_dim
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
while/lstm_cell_4/split
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_1
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_2Ћ
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0while/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_1Ѕ
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/add_1
while/lstm_cell_4/Sigmoid_3Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_3
while/lstm_cell_4/Sigmoid_4Sigmoidwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/Sigmoid_4­
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_3:y:0while/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_4/mul_2п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1п
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityђ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1с
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ:џџџџџџџџџ: : :::2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 


&__inference_output_layer_call_fn_16233
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_122122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
§Z
ь
A__inference_lstm_2_layer_call_and_return_conditional_losses_14856
inputs_0.
*lstm_cell_3_matmul_readvariableop_resource0
,lstm_cell_3_matmul_1_readvariableop_resource/
+lstm_cell_3_biasadd_readvariableop_resource
identityЂ"lstm_cell_3/BiasAdd/ReadVariableOpЂ!lstm_cell_3/MatMul/ReadVariableOpЂ#lstm_cell_3/MatMul_1/ReadVariableOpЂwhileF
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOpЉ
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMulЗ
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOpЅ
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMul_1
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/addА
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOpЈ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/BiasAddh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimя
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_3/split
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_2
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_1
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_3Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_3
lstm_cell_3/Sigmoid_4Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_4
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_3:y:0lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_14771*
condR
while_cond_14770*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeч
IdentityIdentitytranspose_1:y:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
СD
г
A__inference_lstm_3_layer_call_and_return_conditional_losses_11602

inputs
lstm_cell_4_11520
lstm_cell_4_11522
lstm_cell_4_11524
identityЂ#lstm_cell_4/StatefulPartitionedCallЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_11520lstm_cell_4_11522lstm_cell_4_11524*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_112062%
#lstm_cell_4/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_11520lstm_cell_4_11522lstm_cell_4_11524*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11533*
condR
while_cond_11532*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_4/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
І
О
while_cond_14770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14770___redundant_placeholder03
/while_while_cond_14770___redundant_placeholder13
/while_while_cond_14770___redundant_placeholder23
/while_while_cond_14770___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Д
л
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_16705

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
ѓД

G__inference_sequential_1_layer_call_and_return_conditional_losses_14504

inputs5
1lstm_2_lstm_cell_3_matmul_readvariableop_resource7
3lstm_2_lstm_cell_3_matmul_1_readvariableop_resource6
2lstm_2_lstm_cell_3_biasadd_readvariableop_resource5
1lstm_3_lstm_cell_4_matmul_readvariableop_resource7
3lstm_3_lstm_cell_4_matmul_1_readvariableop_resource6
2lstm_3_lstm_cell_4_biasadd_readvariableop_resource5
1output_lstm_cell_5_matmul_readvariableop_resource7
3output_lstm_cell_5_matmul_1_readvariableop_resource6
2output_lstm_cell_5_biasadd_readvariableop_resource
identityЂ)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpЂ(lstm_2/lstm_cell_3/MatMul/ReadVariableOpЂ*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpЂlstm_2/whileЂ)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpЂ(lstm_3/lstm_cell_4/MatMul/ReadVariableOpЂ*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpЂlstm_3/whileЂ)output/lstm_cell_5/BiasAdd/ReadVariableOpЂ(output/lstm_cell_5/MatMul/ReadVariableOpЂ*output/lstm_cell_5/MatMul_1/ReadVariableOpЂoutput/whileR
lstm_2/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_2/Shape
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros/mul/y
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros/Less/y
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros/packed/1
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros_1/mul/y
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_2/zeros_1/Less/y
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/zeros_1/packed/1Ѕ
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/zeros_1
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm
lstm_2/transpose	Transposeinputslstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_2/TensorArrayV2/element_shapeЮ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Э
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2І
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_2/strided_slice_2Ц
(lstm_2/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02*
(lstm_2/lstm_cell_3/MatMul/ReadVariableOpХ
lstm_2/lstm_cell_3/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/MatMulЬ
*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02,
*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOpС
lstm_2/lstm_cell_3/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/MatMul_1З
lstm_2/lstm_cell_3/addAddV2#lstm_2/lstm_cell_3/MatMul:product:0%lstm_2/lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/addХ
)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02+
)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOpФ
lstm_2/lstm_cell_3/BiasAddBiasAddlstm_2/lstm_cell_3/add:z:01lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_2/lstm_cell_3/BiasAddv
lstm_2/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/lstm_cell_3/Const
"lstm_2/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_3/split/split_dim
lstm_2/lstm_cell_3/splitSplit+lstm_2/lstm_cell_3/split/split_dim:output:0#lstm_2/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_2/lstm_cell_3/split
lstm_2/lstm_cell_3/SigmoidSigmoid!lstm_2/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid
lstm_2/lstm_cell_3/Sigmoid_1Sigmoid!lstm_2/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_1Є
lstm_2/lstm_cell_3/mulMul lstm_2/lstm_cell_3/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/mul
lstm_2/lstm_cell_3/Sigmoid_2Sigmoid!lstm_2/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_2Џ
lstm_2/lstm_cell_3/mul_1Mullstm_2/lstm_cell_3/Sigmoid:y:0 lstm_2/lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/mul_1Љ
lstm_2/lstm_cell_3/add_1AddV2lstm_2/lstm_cell_3/mul:z:0lstm_2/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/add_1
lstm_2/lstm_cell_3/Sigmoid_3Sigmoid!lstm_2/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_3
lstm_2/lstm_cell_3/Sigmoid_4Sigmoidlstm_2/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/Sigmoid_4Б
lstm_2/lstm_cell_3/mul_2Mul lstm_2/lstm_cell_3/Sigmoid_3:y:0 lstm_2/lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_2/lstm_cell_3/mul_2
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2&
$lstm_2/TensorArrayV2_1/element_shapeд
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterв
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_3_matmul_readvariableop_resource3lstm_2_lstm_cell_3_matmul_1_readvariableop_resource2lstm_2_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_2_while_body_14119*#
condR
lstm_2_while_cond_14118*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
lstm_2/whileУ
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_2/strided_slice_3/stack
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2Ф
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_2/strided_slice_3
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permС
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime
dropout_2/IdentityIdentitylstm_2/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout_2/Identityg
lstm_3/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros/mul/y
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros/Less/y
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros/packed/1
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros_1/mul/y
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros_1/Less/y
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/zeros_1/packed/1Ѕ
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/zeros_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/permЄ
lstm_3/transpose	Transposedropout_2/Identity:output:0lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_3/TensorArrayV2/element_shapeЮ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Э
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2І
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_3/strided_slice_2Ц
(lstm_3/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_4_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02*
(lstm_3/lstm_cell_4/MatMul/ReadVariableOpХ
lstm_3/lstm_cell_4/MatMulMatMullstm_3/strided_slice_2:output:00lstm_3/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/MatMulЬ
*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02,
*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOpС
lstm_3/lstm_cell_4/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/MatMul_1З
lstm_3/lstm_cell_4/addAddV2#lstm_3/lstm_cell_4/MatMul:product:0%lstm_3/lstm_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/addХ
)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02+
)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOpФ
lstm_3/lstm_cell_4/BiasAddBiasAddlstm_3/lstm_cell_4/add:z:01lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_3/lstm_cell_4/BiasAddv
lstm_3/lstm_cell_4/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_4/Const
"lstm_3/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_4/split/split_dim
lstm_3/lstm_cell_4/splitSplit+lstm_3/lstm_cell_4/split/split_dim:output:0#lstm_3/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_3/lstm_cell_4/split
lstm_3/lstm_cell_4/SigmoidSigmoid!lstm_3/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid
lstm_3/lstm_cell_4/Sigmoid_1Sigmoid!lstm_3/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_1Є
lstm_3/lstm_cell_4/mulMul lstm_3/lstm_cell_4/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/mul
lstm_3/lstm_cell_4/Sigmoid_2Sigmoid!lstm_3/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_2Џ
lstm_3/lstm_cell_4/mul_1Mullstm_3/lstm_cell_4/Sigmoid:y:0 lstm_3/lstm_cell_4/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/mul_1Љ
lstm_3/lstm_cell_4/add_1AddV2lstm_3/lstm_cell_4/mul:z:0lstm_3/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/add_1
lstm_3/lstm_cell_4/Sigmoid_3Sigmoid!lstm_3/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_3
lstm_3/lstm_cell_4/Sigmoid_4Sigmoidlstm_3/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/Sigmoid_4Б
lstm_3/lstm_cell_4/mul_2Mul lstm_3/lstm_cell_4/Sigmoid_3:y:0 lstm_3/lstm_cell_4/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_3/lstm_cell_4/mul_2
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2&
$lstm_3/TensorArrayV2_1/element_shapeд
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterв
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_4_matmul_readvariableop_resource3lstm_3_lstm_cell_4_matmul_1_readvariableop_resource2lstm_3_lstm_cell_4_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_14269*#
condR
lstm_3_while_cond_14268*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
lstm_3/whileУ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_3/strided_slice_3/stack
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2Ф
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_3/strided_slice_3
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permС
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime
dropout_3/IdentityIdentitylstm_3/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout_3/Identityg
output/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:2
output/Shape
output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
output/strided_slice/stack
output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
output/strided_slice/stack_1
output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
output/strided_slice/stack_2
output/strided_sliceStridedSliceoutput/Shape:output:0#output/strided_slice/stack:output:0%output/strided_slice/stack_1:output:0%output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
output/strided_slicej
output/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros/mul/y
output/zeros/mulMuloutput/strided_slice:output:0output/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
output/zeros/mulm
output/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
output/zeros/Less/y
output/zeros/LessLessoutput/zeros/mul:z:0output/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
output/zeros/Lessp
output/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros/packed/1
output/zeros/packedPackoutput/strided_slice:output:0output/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
output/zeros/packedm
output/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
output/zeros/Const
output/zerosFilloutput/zeros/packed:output:0output/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/zerosn
output/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros_1/mul/y
output/zeros_1/mulMuloutput/strided_slice:output:0output/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
output/zeros_1/mulq
output/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
output/zeros_1/Less/y
output/zeros_1/LessLessoutput/zeros_1/mul:z:0output/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
output/zeros_1/Lesst
output/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<2
output/zeros_1/packed/1Ѕ
output/zeros_1/packedPackoutput/strided_slice:output:0 output/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
output/zeros_1/packedq
output/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
output/zeros_1/Const
output/zeros_1Filloutput/zeros_1/packed:output:0output/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/zeros_1
output/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
output/transpose/permЄ
output/transpose	Transposedropout_3/Identity:output:0output/transpose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
output/transposed
output/Shape_1Shapeoutput/transpose:y:0*
T0*
_output_shapes
:2
output/Shape_1
output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
output/strided_slice_1/stack
output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_1/stack_1
output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_1/stack_2
output/strided_slice_1StridedSliceoutput/Shape_1:output:0%output/strided_slice_1/stack:output:0'output/strided_slice_1/stack_1:output:0'output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
output/strided_slice_1
"output/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"output/TensorArrayV2/element_shapeЮ
output/TensorArrayV2TensorListReserve+output/TensorArrayV2/element_shape:output:0output/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
output/TensorArrayV2Э
<output/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<output/TensorArrayUnstack/TensorListFromTensor/element_shape
.output/TensorArrayUnstack/TensorListFromTensorTensorListFromTensoroutput/transpose:y:0Eoutput/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.output/TensorArrayUnstack/TensorListFromTensor
output/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
output/strided_slice_2/stack
output/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_2/stack_1
output/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_2/stack_2І
output/strided_slice_2StridedSliceoutput/transpose:y:0%output/strided_slice_2/stack:output:0'output/strided_slice_2/stack_1:output:0'output/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
output/strided_slice_2Ч
(output/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1output_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	№*
dtype02*
(output/lstm_cell_5/MatMul/ReadVariableOpЦ
output/lstm_cell_5/MatMulMatMuloutput/strided_slice_2:output:00output/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/MatMulЭ
*output/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3output_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	<№*
dtype02,
*output/lstm_cell_5/MatMul_1/ReadVariableOpТ
output/lstm_cell_5/MatMul_1MatMuloutput/zeros:output:02output/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/MatMul_1И
output/lstm_cell_5/addAddV2#output/lstm_cell_5/MatMul:product:0%output/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/addЦ
)output/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2output_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:№*
dtype02+
)output/lstm_cell_5/BiasAdd/ReadVariableOpХ
output/lstm_cell_5/BiasAddBiasAddoutput/lstm_cell_5/add:z:01output/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ№2
output/lstm_cell_5/BiasAddv
output/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
output/lstm_cell_5/Const
"output/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"output/lstm_cell_5/split/split_dim
output/lstm_cell_5/splitSplit+output/lstm_cell_5/split/split_dim:output:0#output/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<:џџџџџџџџџ<*
	num_split2
output/lstm_cell_5/split
output/lstm_cell_5/SigmoidSigmoid!output/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid
output/lstm_cell_5/Sigmoid_1Sigmoid!output/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_1Є
output/lstm_cell_5/mulMul output/lstm_cell_5/Sigmoid_1:y:0output/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/mul
output/lstm_cell_5/Sigmoid_2Sigmoid!output/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_2Џ
output/lstm_cell_5/mul_1Muloutput/lstm_cell_5/Sigmoid:y:0 output/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/mul_1Љ
output/lstm_cell_5/add_1AddV2output/lstm_cell_5/mul:z:0output/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/add_1
output/lstm_cell_5/Sigmoid_3Sigmoid!output/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_3
output/lstm_cell_5/Sigmoid_4Sigmoidoutput/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/Sigmoid_4Б
output/lstm_cell_5/mul_2Mul output/lstm_cell_5/Sigmoid_3:y:0 output/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ<2
output/lstm_cell_5/mul_2
$output/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   2&
$output/TensorArrayV2_1/element_shapeд
output/TensorArrayV2_1TensorListReserve-output/TensorArrayV2_1/element_shape:output:0output/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
output/TensorArrayV2_1\
output/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
output/time
output/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
output/while/maximum_iterationsx
output/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
output/while/loop_counterв
output/whileWhile"output/while/loop_counter:output:0(output/while/maximum_iterations:output:0output/time:output:0output/TensorArrayV2_1:handle:0output/zeros:output:0output/zeros_1:output:0output/strided_slice_1:output:0>output/TensorArrayUnstack/TensorListFromTensor:output_handle:01output_lstm_cell_5_matmul_readvariableop_resource3output_lstm_cell_5_matmul_1_readvariableop_resource2output_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
output_while_body_14419*#
condR
output_while_cond_14418*K
output_shapes:
8: : : : :џџџџџџџџџ<:џџџџџџџџџ<: : : : : *
parallel_iterations 2
output/whileУ
7output/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ<   29
7output/TensorArrayV2Stack/TensorListStack/element_shape
)output/TensorArrayV2Stack/TensorListStackTensorListStackoutput/while:output:3@output/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ<*
element_dtype02+
)output/TensorArrayV2Stack/TensorListStack
output/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
output/strided_slice_3/stack
output/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
output/strided_slice_3/stack_1
output/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
output/strided_slice_3/stack_2Ф
output/strided_slice_3StridedSlice2output/TensorArrayV2Stack/TensorListStack:tensor:0%output/strided_slice_3/stack:output:0'output/strided_slice_3/stack_1:output:0'output/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ<*
shrink_axis_mask2
output/strided_slice_3
output/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
output/transpose_1/permС
output/transpose_1	Transpose2output/TensorArrayV2Stack/TensorListStack:tensor:0 output/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<<2
output/transpose_1t
output/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
output/runtimeЌ
IdentityIdentityoutput/strided_slice_3:output:0*^lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_3/MatMul/ReadVariableOp+^lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp^lstm_2/while*^lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_4/MatMul/ReadVariableOp+^lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp^lstm_3/while*^output/lstm_cell_5/BiasAdd/ReadVariableOp)^output/lstm_cell_5/MatMul/ReadVariableOp+^output/lstm_cell_5/MatMul_1/ReadVariableOp^output/while*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::2V
)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_3/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_3/MatMul/ReadVariableOp(lstm_2/lstm_cell_3/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_3/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2V
)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_4/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_4/MatMul/ReadVariableOp(lstm_3/lstm_cell_4/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_4/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while2V
)output/lstm_cell_5/BiasAdd/ReadVariableOp)output/lstm_cell_5/BiasAdd/ReadVariableOp2T
(output/lstm_cell_5/MatMul/ReadVariableOp(output/lstm_cell_5/MatMul/ReadVariableOp2X
*output/lstm_cell_5/MatMul_1/ReadVariableOp*output/lstm_cell_5/MatMul_1/ReadVariableOp2
output/whileoutput/while:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
з
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_12709

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
у
ы
G__inference_sequential_1_layer_call_and_return_conditional_losses_13530

inputs
lstm_2_13506
lstm_2_13508
lstm_2_13510
lstm_3_13514
lstm_3_13516
lstm_3_13518
output_13522
output_13524
output_13526
identityЂlstm_2/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_13506lstm_2_13508lstm_2_13510*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_126622 
lstm_2/StatefulPartitionedCallћ
dropout_2/PartitionedCallPartitionedCall'lstm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_127092
dropout_2/PartitionedCallЗ
lstm_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0lstm_3_13514lstm_3_13516lstm_3_13518*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_130272 
lstm_3/StatefulPartitionedCallћ
dropout_3/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_130742
dropout_3/PartitionedCallГ
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0output_13522output_13524output_13526*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_133922 
output/StatefulPartitionedCallо
IdentityIdentity'output/StatefulPartitionedCall:output:0^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ<:::::::::2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Д
л
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_16738

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
ОZ
ъ
A__inference_lstm_2_layer_call_and_return_conditional_losses_12662

inputs.
*lstm_cell_3_matmul_readvariableop_resource0
,lstm_cell_3_matmul_1_readvariableop_resource/
+lstm_cell_3_biasadd_readvariableop_resource
identityЂ"lstm_cell_3/BiasAdd/ReadVariableOpЂ!lstm_cell_3/MatMul/ReadVariableOpЂ#lstm_cell_3/MatMul_1/ReadVariableOpЂwhileD
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
value	B :2
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
value	B :2
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
:џџџџџџџџџ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:џџџџџџџџџ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:<џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2Б
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02#
!lstm_cell_3/MatMul/ReadVariableOpЉ
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMulЗ
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02%
#lstm_cell_3/MatMul_1/ReadVariableOpЅ
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/MatMul_1
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/addА
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02$
"lstm_cell_3/BiasAdd/ReadVariableOpЈ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
lstm_cell_3/BiasAddh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimя
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
lstm_cell_3/split
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_2
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_1
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_3Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_3
lstm_cell_3/Sigmoid_4Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/Sigmoid_4
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_3:y:0lstm_cell_3/Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_3/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
while/loop_counterщ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_12577*
condR
while_cond_12576*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:<џџџџџџџџџ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeо
IdentityIdentitytranspose_1:y:0#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ<:::2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
З
Ы
+__inference_lstm_cell_3_layer_call_fn_16672

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_106292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
Ў
b
)__inference_dropout_3_layer_call_fn_15911

inputs
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_130692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Ё
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_15218

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeИ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yТ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ<2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ<2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ<2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ<:S O
+
_output_shapes
:џџџџџџџџџ<
 
_user_specified_nameinputs
Ќ
й
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_11239

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџx2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimП
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
mul_2Ј
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЌ

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ќ

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Љ
serving_default
;
input2
serving_default_input:0џџџџџџџџџ<:
output0
StatefulPartitionedCall:0џџџџџџџџџ<tensorflow/serving/predict:Ы
Ў:
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
_default_save_signature
+&call_and_return_all_conditional_losses
__call__"б7
_tf_keras_sequentialВ7{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "output", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 60, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 5]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 5]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "output", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 60, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
П
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"

_tf_keras_rnn_layerі	{"class_name": "LSTM", "name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 5]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 5]}}
ч
regularization_losses
trainable_variables
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
С
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"

_tf_keras_rnn_layerј	{"class_name": "LSTM", "name": "lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 30]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 30]}}
ч
regularization_losses
trainable_variables
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
Т
 cell
!
state_spec
"regularization_losses
#trainable_variables
$	variables
%	keras_api
+&call_and_return_all_conditional_losses
__call__"

_tf_keras_rnn_layerљ	{"class_name": "LSTM", "name": "output", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 60, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 30]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 30]}}

&iter

'beta_1

(beta_2
	)decay
*learning_rate+m{,m|-m}.m~/m0m1m2m3m+v,v-v.v/v0v1v2v3v"
	optimizer
 "
trackable_list_wrapper
_
+0
,1
-2
.3
/4
05
16
27
38"
trackable_list_wrapper
_
+0
,1
-2
.3
/4
05
16
27
38"
trackable_list_wrapper
Ю
4metrics
regularization_losses
5layer_regularization_losses
6layer_metrics
trainable_variables
7non_trainable_variables
		variables

8layers
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
­

+kernel
,recurrent_kernel
-bias
9regularization_losses
:trainable_variables
;	variables
<	keras_api
+&call_and_return_all_conditional_losses
__call__"№
_tf_keras_layerж{"class_name": "LSTMCell", "name": "lstm_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
М
=metrics
regularization_losses
>layer_regularization_losses
?layer_metrics

@states
trainable_variables
Anon_trainable_variables
	variables

Blayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Cmetrics
regularization_losses
Dlayer_regularization_losses
Elayer_metrics
trainable_variables
Fnon_trainable_variables
	variables

Glayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
­

.kernel
/recurrent_kernel
0bias
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
+&call_and_return_all_conditional_losses
__call__"№
_tf_keras_layerж{"class_name": "LSTMCell", "name": "lstm_cell_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_4", "trainable": true, "dtype": "float32", "units": 30, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
М
Lmetrics
regularization_losses
Mlayer_regularization_losses
Nlayer_metrics

Ostates
trainable_variables
Pnon_trainable_variables
	variables

Qlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Rmetrics
regularization_losses
Slayer_regularization_losses
Tlayer_metrics
trainable_variables
Unon_trainable_variables
	variables

Vlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
­

1kernel
2recurrent_kernel
3bias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
+&call_and_return_all_conditional_losses
 __call__"№
_tf_keras_layerж{"class_name": "LSTMCell", "name": "lstm_cell_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_5", "trainable": true, "dtype": "float32", "units": 60, "activation": "sigmoid", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
10
21
32"
trackable_list_wrapper
5
10
21
32"
trackable_list_wrapper
М
[metrics
"regularization_losses
\layer_regularization_losses
]layer_metrics

^states
#trainable_variables
_non_trainable_variables
$	variables

`layers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
+:)x2lstm_2/lstm_cell_3/kernel
5:3x2#lstm_2/lstm_cell_3/recurrent_kernel
%:#x2lstm_2/lstm_cell_3/bias
+:)x2lstm_3/lstm_cell_4/kernel
5:3x2#lstm_3/lstm_cell_4/recurrent_kernel
%:#x2lstm_3/lstm_cell_4/bias
,:*	№2output/lstm_cell_5/kernel
6:4	<№2#output/lstm_cell_5/recurrent_kernel
&:$№2output/lstm_cell_5/bias
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
А
cmetrics
9regularization_losses
dlayer_regularization_losses
elayer_metrics
:trainable_variables
fnon_trainable_variables
;	variables

glayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
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
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
А
hmetrics
Hregularization_losses
ilayer_regularization_losses
jlayer_metrics
Itrainable_variables
knon_trainable_variables
J	variables

llayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
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
5
10
21
32"
trackable_list_wrapper
5
10
21
32"
trackable_list_wrapper
А
mmetrics
Wregularization_losses
nlayer_regularization_losses
olayer_metrics
Xtrainable_variables
pnon_trainable_variables
Y	variables

qlayers
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
'
 0"
trackable_list_wrapper
Л
	rtotal
	scount
t	variables
u	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
џ
	vtotal
	wcount
x
_fn_kwargs
y	variables
z	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
.
r0
s1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
v0
w1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
0:.x2 Adam/lstm_2/lstm_cell_3/kernel/m
::8x2*Adam/lstm_2/lstm_cell_3/recurrent_kernel/m
*:(x2Adam/lstm_2/lstm_cell_3/bias/m
0:.x2 Adam/lstm_3/lstm_cell_4/kernel/m
::8x2*Adam/lstm_3/lstm_cell_4/recurrent_kernel/m
*:(x2Adam/lstm_3/lstm_cell_4/bias/m
1:/	№2 Adam/output/lstm_cell_5/kernel/m
;:9	<№2*Adam/output/lstm_cell_5/recurrent_kernel/m
+:)№2Adam/output/lstm_cell_5/bias/m
0:.x2 Adam/lstm_2/lstm_cell_3/kernel/v
::8x2*Adam/lstm_2/lstm_cell_3/recurrent_kernel/v
*:(x2Adam/lstm_2/lstm_cell_3/bias/v
0:.x2 Adam/lstm_3/lstm_cell_4/kernel/v
::8x2*Adam/lstm_3/lstm_cell_4/recurrent_kernel/v
*:(x2Adam/lstm_3/lstm_cell_4/bias/v
1:/	№2 Adam/output/lstm_cell_5/kernel/v
;:9	<№2*Adam/output/lstm_cell_5/recurrent_kernel/v
+:)№2Adam/output/lstm_cell_5/bias/v
р2н
 __inference__wrapped_model_10523И
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *(Ђ%
# 
inputџџџџџџџџџ<
ъ2ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_14504
G__inference_sequential_1_layer_call_and_return_conditional_losses_13450
G__inference_sequential_1_layer_call_and_return_conditional_losses_14051
G__inference_sequential_1_layer_call_and_return_conditional_losses_13423Р
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
,__inference_sequential_1_layer_call_fn_14550
,__inference_sequential_1_layer_call_fn_14527
,__inference_sequential_1_layer_call_fn_13501
,__inference_sequential_1_layer_call_fn_13551Р
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
A__inference_lstm_2_layer_call_and_return_conditional_losses_14703
A__inference_lstm_2_layer_call_and_return_conditional_losses_15031
A__inference_lstm_2_layer_call_and_return_conditional_losses_15184
A__inference_lstm_2_layer_call_and_return_conditional_losses_14856е
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
&__inference_lstm_2_layer_call_fn_14878
&__inference_lstm_2_layer_call_fn_15206
&__inference_lstm_2_layer_call_fn_15195
&__inference_lstm_2_layer_call_fn_14867е
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
Ц2У
D__inference_dropout_2_layer_call_and_return_conditional_losses_15218
D__inference_dropout_2_layer_call_and_return_conditional_losses_15223Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

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
2
)__inference_dropout_2_layer_call_fn_15233
)__inference_dropout_2_layer_call_fn_15228Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

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
ч2ф
A__inference_lstm_3_layer_call_and_return_conditional_losses_15714
A__inference_lstm_3_layer_call_and_return_conditional_losses_15386
A__inference_lstm_3_layer_call_and_return_conditional_losses_15539
A__inference_lstm_3_layer_call_and_return_conditional_losses_15867е
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
&__inference_lstm_3_layer_call_fn_15878
&__inference_lstm_3_layer_call_fn_15550
&__inference_lstm_3_layer_call_fn_15889
&__inference_lstm_3_layer_call_fn_15561е
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
Ц2У
D__inference_dropout_3_layer_call_and_return_conditional_losses_15901
D__inference_dropout_3_layer_call_and_return_conditional_losses_15906Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

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
2
)__inference_dropout_3_layer_call_fn_15911
)__inference_dropout_3_layer_call_fn_15916Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

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
ч2ф
A__inference_output_layer_call_and_return_conditional_losses_16222
A__inference_output_layer_call_and_return_conditional_losses_16550
A__inference_output_layer_call_and_return_conditional_losses_16069
A__inference_output_layer_call_and_return_conditional_losses_16397е
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
&__inference_output_layer_call_fn_16244
&__inference_output_layer_call_fn_16572
&__inference_output_layer_call_fn_16561
&__inference_output_layer_call_fn_16233е
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
ШBХ
#__inference_signature_wrapper_13584input"
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
д2б
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_16605
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_16638О
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
2
+__inference_lstm_cell_3_layer_call_fn_16672
+__inference_lstm_cell_3_layer_call_fn_16655О
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
д2б
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_16738
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_16705О
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
2
+__inference_lstm_cell_4_layer_call_fn_16772
+__inference_lstm_cell_4_layer_call_fn_16755О
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
д2б
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_16838
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_16805О
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
2
+__inference_lstm_cell_5_layer_call_fn_16855
+__inference_lstm_cell_5_layer_call_fn_16872О
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
 __inference__wrapped_model_10523p	+,-./01232Ђ/
(Ђ%
# 
inputџџџџџџџџџ<
Њ "/Њ,
*
output 
outputџџџџџџџџџ<Ќ
D__inference_dropout_2_layer_call_and_return_conditional_losses_15218d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p
Њ ")Ђ&

0џџџџџџџџџ<
 Ќ
D__inference_dropout_2_layer_call_and_return_conditional_losses_15223d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p 
Њ ")Ђ&

0џџџџџџџџџ<
 
)__inference_dropout_2_layer_call_fn_15228W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p
Њ "џџџџџџџџџ<
)__inference_dropout_2_layer_call_fn_15233W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p 
Њ "џџџџџџџџџ<Ќ
D__inference_dropout_3_layer_call_and_return_conditional_losses_15901d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p
Њ ")Ђ&

0џџџџџџџџџ<
 Ќ
D__inference_dropout_3_layer_call_and_return_conditional_losses_15906d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p 
Њ ")Ђ&

0џџџџџџџџџ<
 
)__inference_dropout_3_layer_call_fn_15911W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p
Њ "џџџџџџџџџ<
)__inference_dropout_3_layer_call_fn_15916W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ<
p 
Њ "џџџџџџџџџ<а
A__inference_lstm_2_layer_call_and_return_conditional_losses_14703+,-OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 а
A__inference_lstm_2_layer_call_and_return_conditional_losses_14856+,-OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 Ж
A__inference_lstm_2_layer_call_and_return_conditional_losses_15031q+,-?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p

 
Њ ")Ђ&

0џџџџџџџџџ<
 Ж
A__inference_lstm_2_layer_call_and_return_conditional_losses_15184q+,-?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p 

 
Њ ")Ђ&

0џџџџџџџџџ<
 Ї
&__inference_lstm_2_layer_call_fn_14867}+,-OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџЇ
&__inference_lstm_2_layer_call_fn_14878}+,-OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџ
&__inference_lstm_2_layer_call_fn_15195d+,-?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p

 
Њ "џџџџџџџџџ<
&__inference_lstm_2_layer_call_fn_15206d+,-?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p 

 
Њ "џџџџџџџџџ<Ж
A__inference_lstm_3_layer_call_and_return_conditional_losses_15386q./0?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p

 
Њ ")Ђ&

0џџџџџџџџџ<
 Ж
A__inference_lstm_3_layer_call_and_return_conditional_losses_15539q./0?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p 

 
Њ ")Ђ&

0џџџџџџџџџ<
 а
A__inference_lstm_3_layer_call_and_return_conditional_losses_15714./0OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 а
A__inference_lstm_3_layer_call_and_return_conditional_losses_15867./0OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 
&__inference_lstm_3_layer_call_fn_15550d./0?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p

 
Њ "џџџџџџџџџ<
&__inference_lstm_3_layer_call_fn_15561d./0?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p 

 
Њ "џџџџџџџџџ<Ї
&__inference_lstm_3_layer_call_fn_15878}./0OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџЇ
&__inference_lstm_3_layer_call_fn_15889}./0OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџШ
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_16605§+,-Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ
EB

0/1/0џџџџџџџџџ

0/1/1џџџџџџџџџ
 Ш
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_16638§+,-Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ
EB

0/1/0џџџџџџџџџ

0/1/1џџџџџџџџџ
 
+__inference_lstm_cell_3_layer_call_fn_16655э+,-Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p
Њ "cЂ`

0џџџџџџџџџ
A>

1/0џџџџџџџџџ

1/1џџџџџџџџџ
+__inference_lstm_cell_3_layer_call_fn_16672э+,-Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p 
Њ "cЂ`

0џџџџџџџџџ
A>

1/0џџџџџџџџџ

1/1џџџџџџџџџШ
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_16705§./0Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ
EB

0/1/0џџџџџџџџџ

0/1/1џџџџџџџџџ
 Ш
F__inference_lstm_cell_4_layer_call_and_return_conditional_losses_16738§./0Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ
EB

0/1/0џџџџџџџџџ

0/1/1џџџџџџџџџ
 
+__inference_lstm_cell_4_layer_call_fn_16755э./0Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p
Њ "cЂ`

0џџџџџџџџџ
A>

1/0џџџџџџџџџ

1/1џџџџџџџџџ
+__inference_lstm_cell_4_layer_call_fn_16772э./0Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p 
Њ "cЂ`

0џџџџџџџџџ
A>

1/0џџџџџџџџџ

1/1џџџџџџџџџШ
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_16805§123Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ<
"
states/1џџџџџџџџџ<
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ<
EB

0/1/0џџџџџџџџџ<

0/1/1џџџџџџџџџ<
 Ш
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_16838§123Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ<
"
states/1џџџџџџџџџ<
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ<
EB

0/1/0џџџџџџџџџ<

0/1/1џџџџџџџџџ<
 
+__inference_lstm_cell_5_layer_call_fn_16855э123Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ<
"
states/1џџџџџџџџџ<
p
Њ "cЂ`

0џџџџџџџџџ<
A>

1/0џџџџџџџџџ<

1/1џџџџџџџџџ<
+__inference_lstm_cell_5_layer_call_fn_16872э123Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ<
"
states/1џџџџџџџџџ<
p 
Њ "cЂ`

0џџџџџџџџџ<
A>

1/0џџџџџџџџџ<

1/1џџџџџџџџџ<Т
A__inference_output_layer_call_and_return_conditional_losses_16069}123OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ<
 Т
A__inference_output_layer_call_and_return_conditional_losses_16222}123OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ<
 В
A__inference_output_layer_call_and_return_conditional_losses_16397m123?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p

 
Њ "%Ђ"

0џџџџџџџџџ<
 В
A__inference_output_layer_call_and_return_conditional_losses_16550m123?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ<
 
&__inference_output_layer_call_fn_16233p123OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ<
&__inference_output_layer_call_fn_16244p123OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ<
&__inference_output_layer_call_fn_16561`123?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p

 
Њ "џџџџџџџџџ<
&__inference_output_layer_call_fn_16572`123?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ<

 
p 

 
Њ "џџџџџџџџџ<Й
G__inference_sequential_1_layer_call_and_return_conditional_losses_13423n	+,-./0123:Ђ7
0Ђ-
# 
inputџџџџџџџџџ<
p

 
Њ "%Ђ"

0џџџџџџџџџ<
 Й
G__inference_sequential_1_layer_call_and_return_conditional_losses_13450n	+,-./0123:Ђ7
0Ђ-
# 
inputџџџџџџџџџ<
p 

 
Њ "%Ђ"

0џџџџџџџџџ<
 К
G__inference_sequential_1_layer_call_and_return_conditional_losses_14051o	+,-./0123;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ<
p

 
Њ "%Ђ"

0џџџџџџџџџ<
 К
G__inference_sequential_1_layer_call_and_return_conditional_losses_14504o	+,-./0123;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ<
p 

 
Њ "%Ђ"

0џџџџџџџџџ<
 
,__inference_sequential_1_layer_call_fn_13501a	+,-./0123:Ђ7
0Ђ-
# 
inputџџџџџџџџџ<
p

 
Њ "џџџџџџџџџ<
,__inference_sequential_1_layer_call_fn_13551a	+,-./0123:Ђ7
0Ђ-
# 
inputџџџџџџџџџ<
p 

 
Њ "џџџџџџџџџ<
,__inference_sequential_1_layer_call_fn_14527b	+,-./0123;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ<
p

 
Њ "џџџџџџџџџ<
,__inference_sequential_1_layer_call_fn_14550b	+,-./0123;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ<
p 

 
Њ "џџџџџџџџџ< 
#__inference_signature_wrapper_13584y	+,-./0123;Ђ8
Ђ 
1Њ.
,
input# 
inputџџџџџџџџџ<"/Њ,
*
output 
outputџџџџџџџџџ<