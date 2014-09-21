package {
    import flash.utils.ByteArray;

    function clone (source : *) : * {
        var myBA : ByteArray = new ByteArray();
        myBA.writeObject(source);
        myBA.position = 0;
        return(myBA.readObject());
    }
}
