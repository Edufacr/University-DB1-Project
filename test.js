var termsElement = document.getElementById("PaymentTerms");
if(termsElement){
  termsElement.addEventListener('input',(event) => FeeValueChange());
}

$(document).ready(function(){        
    $("#export-btn").click(function(event){
       event.preventDefault();
       window.location.href = "@Url.Action("Property","PaymentPreview")" + "?pPropertyNumber=" + "@propertyNumber" + $("#ugid").val();
    });
})

function FeeValueChange(params) 
{
    var total = document.getElementById("totalValue").innerHTML;
    var terms = document.getElementById("PaymentTerms").value; 
    getValueChange(terms,total).done(function(value) {
        alert(value); //waits until ajax is completed
    });
}
function getValueChange(terms,total)
{
    $.ajax({
        url: 'GetFeeAmount',
        data: { pTotal: total, pTerms: terms},
        success: function(data) {
            $('#FeeAmount').html(data);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert(jqXHR.status);
            alert(textStatus);
            alert(errorThrown);
        }
    });
}
function payReceiptAction(params) 
{
    var propertyNumber = @propertyNumber;
    var requestType = @cancelButtonRequestType;
    var terms = 0; 
    if(termsElement){
        terms = termsElement.value;
    }
    payReceipt(propertyNumber,requestType,terms).done(function(value) {
       alert(value); //waits until ajax is completed
    }
    );
}
function payReceipt(propertyNumber,requestType,terms)
{
    $.ajax({
        url: 'PaySelectedReceipts',
        data: { pPropertyNumber: propertyNumber, pRequestType: requestType, pPaymentTerms: terms},
        type: "GET",
        success: function(data) {
        alert("Recibo pagado exitosamente");
        window.location.href = data.redirect;
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert(jqXHR.status);
            alert(textStatus);
            alert(errorThrown);
        }
    });
}