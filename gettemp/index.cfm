<cfscript>

    /**
    * I do some processing with some temporary files.
    *
    * @output false
    */
    public void function processRequest( required numeric input ) {

        lock
            name = "processingRequest"
            type = "exclusive"
            timeout = 1
            {

            try {

                // Get a scratch file in the temp directory.
                var tempFilePath = getTempFile( getTempDirectory(), "processing-#input#-" );

                // Do some processing that may cause the parent LOCK to timeout on
                // subsequent requests.

                sleep( 5 * 1000 );

            // No matter what happens, clean up the scratch file.
            } finally {

                fileDelete( tempFilePath );

            }

        } // END: Lock.

    }


    // ------------------------------------------------------ //
    // ------------------------------------------------------ //

	WriteDump(getTempDirectory());
    processRequest( 5);

</cfscript>