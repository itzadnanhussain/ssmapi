<!------------------------Projects Script------------------------------------------->
<script>   

    ////SSM Token
    // function SSMToken(ssm_id) {
    //     $('#client_id').find('option')
    //         .remove().end();
    //     $.ajax({
    //         type: 'POST',
    //         url: '<?php echo base_url('GetClientsBySSMToken') ?>',
    //         data: {
    //             'ssm_id': ssm_id
    //         },
    //         dataType: 'html',
    //         success: function(data) {
    //             let res = JSON.parse(data);
    //             switch (res.code) {
    //                 case 'success':
    //                     let list = '';
    //                     for (let index = 0; index < res.data.length; index++) {
    //                         list += '<option value="' + res.data[index]['clientId'] + '">' + res.data[index]['clientName'] + '</option>';

    //                     }
    //                     $('#client_id').append(list);

    //                     break;
    //                 case 'warning':
    //                     $('#client_id').append('<option value="No Value">No Records</option>');

    //                     break;

    //             }
    //         }
    //     });

    // }


    // //Client Active Scene 
    // $('#clientDataForm').submit(function(e) {
    //     e.preventDefault();
    //     e.stopPropagation();
    //     let form = $(this).serialize();
    //     $.ajax({
    //         type: 'POST',
    //         url: $('#clientDataForm').attr('action'),
    //         data: form,
    //         dataType: 'html',
    //         beforeSend: function() {
    //             $('#btn-sbmit').text('processing...');
    //             $('#btn-sbmit').attr('disabled', true);

    //         },
    //         success: function(data) {
    //             let res = JSON.parse(data);
    //             switch (res.code) {
    //                 case 'success':
    //                     showSuccessToast(res.message);
    //                     let row = '';
    //                     for (let index = 0; index < res.data.length; index++) {
    //                         row += '<tr>' +
    //                             '<td>' + (res.data[index]['project_id']).substr(0, 5) + '..' + '</td>' +
    //                             '<td>' + res.data[index]['name'] + '</td>' +
    //                             '<td>' + res.data[index]['total_work_by_month'] + '</td>' +
    //                             '<td>' + res.data[index]['month_limit'] + '</td>' +
    //                             '<td>soon</td>' +
    //                             '<td>' + (res.data[index]['emails']).substr(0, 10) + '..' + '</td>' +
    //                             '<td>' + res.data[index]['status'] + '</td>' +
    //                             '<td class="actions-links"><a data-toggle="modal" data-target="#projectModal" data-whatever="' + res.data[index]['project_id'] + '"><i class="mdi mdi-pencil-box"></i></a><a href="<?php echo base_url('project_details/') ?>' + btoa(res.data[index]['project_id']) + '"><i class="mdi mdi-airplay"></i></a></td>' +

    //                             '</tr>'; 

    //                     }
    //                     $('#row-append').append(row);
    //                     break;
    //                 case 'warning':
    //                     showWarningToast(res.message);
    //                     break;

    //             }
    //         },
    //         complete: function() {
    //             $('#btn-sbmit').text('Success');

    //         },
    //     });
    // });


</script>






 