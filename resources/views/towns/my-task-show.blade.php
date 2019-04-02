@extends('layouts.employee')

@section('content')

    <div id="content-container">
        <div class="pageheader hidden-xs">
            <h3><i class="fa fa-home"></i> Tasks </h3>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li> <a href="#"> Home </a> </li>
                    <li class="active"> Tasks </li>
                </ol>
            </div>
        </div>
        <!--Page content-->
        <!--===================================================-->
        <div id="page-content">
            @include('includes.errors')
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Update Task</h3>
                        </div>
                        <div class="panel-body">
                            {!! Form::model($task,['method'=>'PATCH','action'=>['Employee\TaskController@updateMyTask',$task->id],'class'=>'form-horizontal form-bordered','enctype' => 'multipart/form-data','id'=>'formID']) !!}
                            <div class="form-group">
                                <div class="col-md-2">
                                    {!! Form::label('title','Title:',['class'=>'control-label'])!!}
                                </div>
                                <div class="col-md-3">
                                    {!! Form::text('title',null,['class'=>'form-control','readonly'])!!}

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    {!! Form::label('description','Description:',['class'=>'control-label'])!!}
                                </div>
                                <div class="col-md-9">
                                    {!! Form::textarea('description',null,['class'=>'form-control','rows'=>3,'readonly'])!!}

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    {!! Form::label('date','Date:',['class'=>'control-label'])!!}
                                </div>
                                <div class="col-md-3">
                                    {!! Form::date('date',null,['class'=>'form-control','readonly'])!!}

                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-2">
                                    {!! Form::label('due_date','Due Date:',['class'=>'control-label'])!!}
                                </div>
                                <div class="col-md-3">
                                    {!! Form::date('due_date',null,['class'=>'form-control','readonly'])!!}

                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-2">
                                    {!! Form::label('level','Level:',['class'=>'control-label'])!!}
                                </div>
                                <div class="col-md-3">
                                    {!! Form::select('level',['high'=>'High','low'=>'Low','medium'=>'Medium'],null,['class'=>'form-control selectpicker','placeholder'=>"Chose",'disabled'])!!}

                                </div>
                            </div>




                            <div class="form-group">
                                <div class="col-md-2">
                                    {!! Form::label('project_id','Project:',['class'=>'control-label'])!!}
                                </div>
                                <div class="col-md-3">
                                    {!! Form::select('project_id',$projects,null,['class'=>'form-control selectpicker','placeholder'=>"Optional",'disabled'])!!}

                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-2">
                                    {!! Form::label('status','Status:',['class'=>'control-label'])!!}
                                </div>
                                <div class="col-md-3">
                                    {!! Form::select('status',["0"=>"Pending","1"=>"Completed"],null,['class'=>'form-control selectpicker','placeholder'=>"Select Status",'readonly'])!!}

                                </div>
                            </div>

                            <div id="imgDiv" class="row">
                                <div class="col-md-4"><img class="img-responsive" src="{{$task->photo? $task->photoPath(): 'http://placehold.it/400x400'}}" >
                                </div>
                                @if($task->photo)
                                    <div class="col-md-8">
                                        <button id="delBtn" type="button" class="btn btn-primary btn-sm">
                                            <i class="fa fa-eraser"></i> Delete Photo
                                        </button>
                                    </div>
                                @endif
                            </div>








                            <div class="form-group">
                                <div class="col-md-2">
                                    <button class="btn btn-default" type="submit"><i class="fa fa-check-circle"></i> Save</button>
                                </div>
                            </div>

                            {!! Form::close() !!}

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>



        $('#delBtn').click(function () {
            $('#imgDiv').remove();
            $('#formID').append("<input type='hidden' name='delPic' value='1' />")
        });
    </script>

@endsection