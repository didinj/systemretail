<%@ page import="com.djamware.Purchase" %>
<%@ page import="com.djamware.PurchaseDetail" %>
<script type="text/javascript">
  function getProduct(data) {
    var rows = data.length
    var htm = '';
    for(i=0;i<rows;i++) {
      htm+='<tr><td><input class="plu" type="text" name="purdet.'+i+'.plu" value="'+data[i].plu+'" /></td><td><input class="description" type="text" name="purdet.'+i+'.description" value="'+data[i].description+'" /></td><td><input class="amount" type="text" name="purdet.'+i+'.cost" id="cost'+i+'" value="'+data[i].cost+'" /></td><td><input class="qty" type="text" name="purdet.'+i+'.qty" id="qty'+i+'" value="" onkeyup="sumtcost(\''+i+'\')" /></td><td><input class="qty" type="text" name="purdet.'+i+'.discpercent" id="discpercent'+i+'" value="" onkeyup="discpercent(\''+i+'\')" /></td><td><input class="amount" type="text" name="purdet.'+i+'.discamount" id="discamount'+i+'" value="" onkeyup="discamount(\''+i+'\')" /></td><td><input class="amount" type="text" name="purdet.'+i+'.tcost" id="tcost'+i+'" value="" /></td></tr>';
    }
    $("#orderdetail-tbody").html(htm);
    $("#detailrow").val(rows);
  }
  
  function sumtcost(i) {
    var qty = $("#qty"+i).val();
    $("#tcost"+i).val(parseFloat($("#cost"+i).val()*qty));
    var total = 0;
    var rowcount = $("#orderdetail-tbody >tr").length;
    for(i=0;i<rowcount;i++) {
      total+=Number($("#tcost"+i).val());
    }
    $("#tbuycost").val(total);
    var disc = $("#tdiscount").val();
    $("#grandtotal").val(parseFloat($("#tbuycost").val()-disc));
  }
  
  function sumgtotal() {
    var disc = $("#tdiscount").val();
    var tcost = $("#tbuycost").val();
    $("#grandtotal").val(parseFloat(tcost-disc));
  }
  
  function discamount(i) {
    var discamount = $("#discamount"+i).val();
    var qty = $("#qty"+i).val();
    var cost = $("#cost"+i).val();
    $("#tcost"+i).val(parseFloat((cost*qty)-discamount));
    $("#discpercent"+i).val(Number((discamount*100)/(cost*qty)));
    var rowcount = $("#orderdetail-tbody >tr").length;
    var tdisc=0;
    for(i=0;i<rowcount;i++) {
      tdisc+=Number($("#discamount"+i).val());
    }
    $("#tdiscount").val(tdisc);
    var tcost = $("#tbuycost").val();
    $("#grandtotal").val(parseFloat(tcost-tdisc));
  }
  
  function discpercent(i) {
    var discpercent=$("#discpercent"+i).val();
    var qty = $("#qty"+i).val();
    var cost = $("#cost"+i).val();
    $("#discamount"+i).val(Number(((cost*qty)*discpercent)/100));
    $("#tcost"+i).val(parseFloat((cost*qty)-($("#discamount"+i).val())));
    var tdisc=0;
    var rowcount = $("#orderdetail-tbody >tr").length;
    for(i=0;i<rowcount;i++) {
      tdisc+=Number($("#discamount"+i).val());
    }
    $("#tdiscount").val(tdisc);
    var tcost = $("#tbuycost").val();
    $("#grandtotal").val(parseFloat(tcost-tdisc));
  }
</script>
<table>
  <tr>
    <td>Supplier</td>
    <td><g:select id="supplier" name="supplier.id" from="${com.djamware.Supplier.list()}" optionKey="id" required="" value="${purchaseInstance?.supplier?.id}" class="many-to-one" onchange="${remoteFunction(action: 'productList',
params: '\'id=\' + this.value',onSuccess:'getProduct(data)')}" noSelection="${['null':'Select Supplier']}"><option>-- Select Supplier --</option></g:select></td>
</tr>
<tr>
  <td colspan="2"><h3>Order Detail</h3></td>
</tr>
<tr>
  <td colspan="2">
    <table id="purchasedtl">
      <thead>
        <tr>
          <th>PLU</th>
          <th>Description</th>
          <th>Cost</th>    
          <th>Order Qty</th>
          <th>Disc %</th>
          <th>Disc Amount</th>
          <th>Total Cost</th>
        </tr>
      </thead>
      <tbody id="orderdetail-tbody">
      </tbody>
      <tfoot id="orderdetail-tfoot">
        <tr>
          <td colspan="6">TOTAL</td>
          <td><g:field id="tbuycost" type="number" name="tbuycost" required="" value="${fieldValue(bean: purchaseInstance, field: 'tbuycost')}" class="amount"/></td>
</tr>
<tr>
  <td colspan="6">DISCOUNT</td>
  <td><g:field id="tdiscount" type="number" name="tdiscount" required="" value="${fieldValue(bean: purchaseInstance, field: 'tdiscount')}" onkeyup="sumgtotal()" class="amount" /></td>
</tr>
<tr>
  <td colspan="6">GRAND TOTAL</td>
  <td><g:field id="grandtotal" type="number" name="grandtotal" required="" value="${fieldValue(bean: purchaseInstance, field: 'grandtotal')}" class="amount"/></td>
</tr>
<tr>
  <td>Notes</td>
  <td colspan="6"><g:textArea name="notes" value="${purchaseInstance?.notes}" id="notes"/></td>
</tr>
</tfoot>
</table>
</td>
</tr>
</table>
<div style="display: none">
  <g:textField name="status" value="${purchaseInstance?.status}"/>
  <g:textField name="userid" value="${sec.loggedInUserInfo(field:"id")}"/>  
  <g:datePicker name="createdate" precision="day"  value="${purchaseInstance?.createdate}" default="none" noSelection="['': '']" />
  <g:datePicker name="confirmdate" precision="day"  value="${purchaseInstance?.confirmdate}" default="none" noSelection="['': '']" />
  <g:datePicker name="updatedate" precision="day"  value="${purchaseInstance?.updatedate}" default="none" noSelection="['': '']" />
  <g:textField name="detailrow" id="detailrow"/>
</div>