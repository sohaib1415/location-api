@php
use App\Model\Town;
@endphp
<fieldset>
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <legend>Add Area</legend>
    <hr>

{{-- {!! Form::open(['method'=>"POST", 'url' => route('add-town'), 'class' => 'form-horizontal']) !!} --}}
<form class="validate form-horizontal form_wrp" role="form" method="POST" name="{{ route('areas.store') }}" action="{{ route('areas.store') }}">
    {{ csrf_field() }}
    @php $town_model = Town::pluck('title', 'id'); @endphp
    <div class="form-group">
        <div class="col-xs-6">
            <label for="town"><h4>Town</h4></label>
            <select name="town_id" class="form-control">
                <option value="">Select...</option>
                @foreach ($town_model as $town_id => $town_title)
                    <option value="{{ $town_id }}">{{ $town_title }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="town_title"><h4>Title</h4></label>
            <input type="text" class="form-control" name="title" id="title" placeholder="title" title="enter title of the town">
        </div>
    </div>
    {{-- <div class="form-group">
        <div class="col-xs-6">
            <label for="town_description"><h4>Description</h4></label>
            <input type="text" class="form-control" name="description" id="description" placeholder="description" title="enter your description of the town if any.">
        </div>
    </div> --}}
    <div class="form-group">
        <div class="col-xs-12">
            <br>
            <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
            <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
        </div>
    </div>

{{-- {!! Form::close()  !!} --}}
</form>
</fieldset>
