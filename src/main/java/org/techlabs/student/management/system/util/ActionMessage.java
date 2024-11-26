package org.techlabs.student.management.system.util;

public enum ActionMessage {

    UNKNOWN_CODE(900, "UnknownActionCode", true),

    VEHICLE_ADD_SUCCEED(1000 , "Vehicle Added Successfully", false),
    VEHICLE_ADD_FAILED(1001,"Vehicle Adding Failed", true),
    VEHICLE_UPDATE_SUCCEED(1002 , "Vehicle Updated Successfully", false),
    VEHICLE_UPDATE_FAILED(1003,"Vehicle Updating Failed", true),
    VEHICLE_DELETE_SUCCEED(1004 , "Vehicle Deleted Successfully", false),
    VEHICLE_DELETE_FAILED(1005,"Vehicle Deleting Failed", true),
    NO_VEHICLE_AVAILABLE(1006, "No vehicle available for your requirements" , true),

    TO_ADD_SUCCEED(2000, "Technical Officer Registered Successfully", false),
    TO_ADD_FAILED(2001, "Technical Officer Registration Failed", true),

    PROFILE_UPDATE_SUCCEED(3000, "Profile Updated Successfully", false),
    PROFILE_UPDATE_FAILED(3001, "Profile Updated Successfully", true),

    BOOKING_STATE_UPDATED(4000, "Booking State Updated Successfully", false),
    BOOKING_STATE_UPDATING_FAILED(4001, "Booking State Updating Failed", true),
    BOOKING_ADD_SUCCEED(4002, "Booking Added Successfully", false),
    BOOKING_ADD_FAILED(4003, "Booking Failed", true),

    USED_EMAIL_ERROR(5000, "Email is already used", true),
    INVALID_EMAIL_OR_PASSWORD(5001, "Invalid email or password", true),
    REGISTRATION_SUCCEED(5002, "Registration Succeed. Please login", false),

    PAYMENT_SUCCEED(6000, "Payment Added Successfully", false),
    PAYMENT_FAILED(6000, "Payment Adding Failed", false);


    private final int id;
    private final String message;
    private final boolean isError;

    ActionMessage(int id, String message, boolean isError){
        this.id = id;
        this.message = message;
        this.isError = isError;
    }

    public static ActionMessage getById(int id) {
        for(ActionMessage e : values()) {
            if(e.id == id) return e;
        }
        return UNKNOWN_CODE;
    }

    public int getId() {
        return id;
    }

    public String getMessage() {
        return message;
    }

    public boolean getIsError(){
        return isError;
    }
}
