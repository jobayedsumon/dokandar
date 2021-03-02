@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title text-center">{{ __('Region Info') }}</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" action="{{ route('countries.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <div class="col-lg-3">
                                <label class="control-label">{{ __('Name') }}</label>
                            </div>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="name" placeholder="{{ __('Name') }}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-3">
                                <label class="control-label">{{ __('Code') }}</label>
                            </div>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="code" placeholder="{{ __('Code') }}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-12 text-right">
                                <button class="btn btn-purple" type="submit">{{__('Save')}}</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>






    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title">{{__('Regions')}}</h3>
        </div>

        <div class="panel-body">
            <table class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th width="10%">#</th>
                        <th>{{__('Name')}}</th>
                        <th>{{__('Code')}}</th>
                        <th>{{__('Show/Hide')}}</th>
                        <th>{{__('Delete')}}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($countries as $key => $country)
                        <tr>
                            <td>{{ ($key+1) + ($countries->currentPage() - 1)*$countries->perPage() }}</td>
                            <td>{{ $country->name }}</td>
                            <td>{{ $country->code }}</td>
                            <td><label class="switch">
                                    <input onchange="update_status(this)" value="{{ $country->id }}" type="checkbox" <?php if($country->status == 1) echo "checked";?> >
                                    <span class="slider round"></span></label></td>
                            <td>
                                <a href="{{ route('countries.destroy', $country->id) }}"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="clearfix">
                <div class="pull-right">
                    {{ $countries->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">

        function update_status(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }
            $.post('{{ route('countries.status') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    showAlert('success', 'Country status updated successfully');
                }
                else{
                    showAlert('danger', 'Something went wrong');
                }
            });
        }

    </script>
@endsection
