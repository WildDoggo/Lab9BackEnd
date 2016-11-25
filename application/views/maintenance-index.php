<h2>Menu Maintenance</h2>
<a class='btn btn-primary' href="/maintenance/create" style="margin-bottom:15px">Create</a>
<table class='table'>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Description</th>
    <th>Picture</th>
    <th><!-- Controls --></th>
  </tr>
  {items}
  <tr>
    <td><a class='btn btn-default' href="/maintenance/edit/{id}">{id}</a></td>
    <td>{name}</td>
    <td>{description}</td>
    <td>{picture}</td>  
    <td><a class='btn btn-danger' href="/maintenance/delete/{id}">Delete</a></td>
  </tr>
  {/items}
</table>