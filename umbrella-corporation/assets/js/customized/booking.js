/**
 * @author Phong-Kaster
 * @since 04-11-2022
 * set up time picker for the "APPOINTMENT_DATE" field in APPOINTMENT table
 */
 function setupTimePicker()
 {
 
     $('#appointment-date').val("");
     $('#appointment-date').datetimepicker({
         format:'Y-m-d'
     });
 }

/**
 * @author Phong-Kaster
 * @since 06-11-2022
 * setup booking info
 */
function setupBookingInfo(id)
{
    $.ajax({
        type: "GET",
        url: `${API_URL}/bookings/${id}`,
        dataType: "JSON",
        success: function(resp) {
        if(resp.result == 1)
        {
            let serviceId = resp.data.service.id;
            let bookingName = resp.data.booking_name;
            let bookingPhone = resp.data.booking_phone;
            let patientName = resp.data.name;
            let patientGender = resp.data.gender;
            let patientBirthday = resp.data.birthday;
            let address = resp.data.address;
            let reason = resp.data.reason;
            let appointmentTime =  resp.data.appointment_time;
            let appointmentDate =  resp.data.appointment_date;
            

            $("#service").val(serviceId);
            $("#booking-name").val(bookingName);
            $("#booking-phone").val(bookingPhone);
            $("#patient-name").val(patientName);
            $("#patient-gender").val(patientGender);
            $("#patient-birthday").val(patientBirthday);
            $("#address").val(address);
            $("#patient-reason").val(reason);
            $("#appointment-time").val(appointmentTime);
            $("#appointment-date").val(appointmentDate);
        }
        else
        {
            window.location = `${APP_URL}/error`;
        }
        },
        error: function(err) {
            Swal.fire('Oops...', "Oops! An error occured. Please try again later!", 'error');
        }
    });
}


function reset()
{
    $("#booking-name").val("");
    $("#booking-phone").val("");
    $("#patient-name").val("");
    $("#patient-gender").val("");
    $("#patient-birthday").val("");
    $("#patient-address").val("");
    $("#patient-reason").val("");
    $("#appointment-time").val("");
    $("#appointment-date").val("");
}

function getNecessaryInfo()
{
    let serviceId = $("#service").val();
    let bookingName = $("#booking-name").val();
    let bookingPhone = $("#booking-phone").val();
    let name = $("#patient-name").val();
    let gender = $("#patient-gender").val();
    let birthday = $("#patient-birthday").val();
    let address = $("#patient-address").val() ? $("#patient-address").val() : "";
    let reason = $("#patient-reason").val();
    let appointmentTime = $("#appointment-time").val();
    let appointmentDate = $("#appointment-date").val();

    let params = {
        service_id: serviceId,
        booking_name: bookingName,
        booking_phone: bookingPhone,
        name: name,
        gender: gender,
        birthday: birthday,
        address: address,
        reason: reason,
        appointment_date: appointmentDate,
        appointment_time: appointmentTime
    }

    return params;
}

/**
 * @author Phong-Kaster
 * @since 06-11-2022
 * @param {} id 
 */
function setupButton(id)
{
    let method = "PUT";
    let url = API_URL+`/bookings/${id}`;
    let info = {};
    info["patient_id"] = id;


    /**BUTTON RESET */
    $("#button-reset").click(function(){
        reset();
    });


    /**BUTTON CANCEL */
    $("#button-cancel").click(function(){
        Swal
        .fire({
            title: 'B???n ch???c ch???n mu???n hu??? b???',
            text: "H??nh ?????ng n??y kh??ng th??? kh??i ph???c sau khi th???c hi???n",
            icon: 'question',
            confirmButtonText: 'X??c nh???n',
            confirmButtonColor: '#FF0000',
            cancelButtonColor: '#0000FF',
            cancelButtonText: 'H???y',
            reverseButtons: false,
            showCancelButton: true
        })
        .then((result) => 
            {
                if (result.isConfirmed) 
                {
                    window.location.href = `${APP_URL}/bookings`;
                } 
                else
                {
                    Swal.close();
                }
            });// end Swal
    });


    /**BUTTON CONFIRM */
    $("#button-confirm").click(function(){
        Swal
        .fire({
            title: 'B???n ch???c ch???n mu???n th???c hi???n h??nh ?????ng ng??y',
            text: "H??nh ?????ng n??y kh??ng th??? kh??i ph???c sau khi th???c hi???n",
            icon: 'question',
            confirmButtonText: 'X??c nh???n',
            confirmButtonColor: '#FF0000',
            cancelButtonColor: '#0000FF',
            cancelButtonText: 'H???y',
            reverseButtons: false,
            showCancelButton: true
        })
        .then((result) => 
            {
                if (result.isConfirmed) 
                {
                    info = getNecessaryInfo();
                    sendBookingRequest(method, url, info);
                } 
                else
                {
                    Swal.close();
                }
            });// end Swal
    });
}

function sendBookingRequest(method, url, info)
{
    $.ajax({
        type: method,
        url: url,
        data: info,
        dataType: "JSON",
        success: function(resp) {
        if(resp.result == 1)
        {
            showMessageWithButton('success','Th??nh c??ng','Y??u c???u ???? ???????c ho??n t???t !');
        }
        else
        {
            showMessageWithButton('error','Th???t b???i', resp.msg);
        }
        },
        error: function(err) {
            Swal.fire('Oops...', "Oops! An error occured. Please try again later!", 'error');
        }
    });
}