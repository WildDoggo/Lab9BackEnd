<h2>Menu Maintenance - Editing</h2>

<span class='error'>{errors}</span>

<?php echo form_open_multipart('/maintenance/save');?>
<!-- <form action="/upload/do_upload" enctype="multipart/form-data" method="post" accept-charset="utf-8"> -->
{fid}
{fname}
{fdescription}
{fprice}
{fpicture}
{fcategory}
{zsubmit} <a class="btn btn-default" role="button" href="/maintenance/cancel">Cancel</a>
</form>