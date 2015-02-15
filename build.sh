function _findIasl()
{
    if (($gCallIasl)); then
        #
        # Then we do a quick lookup of iasl (should also be there after the first run)
        #
        if [ ! -f /usr/local/bin/iasl ]; then
            printf "\nIASL not found. "
            #
            # First we check the target directory (should be there after the first run)
            #
            # XXX: Jeroen, try curl --create-dirs without the mkdir here ;)
            if [ ! -d /usr/local/bin ]; then
                printf "Creating target directory... "
                sudo mkdir -p /usr/local/bin/
                sudo chown -R root:wheel /usr/local/bin/
            fi

            printf "Downloading iasl...\n"
            sudo curl -o /usr/local/bin/iasl https://raw.github.com/Piker-Alpha/RevoBoot/clang/i386/libsaio/acpi/Tools/iasl
#           sudo curl https://raw.github.com/Piker-Alpha/RevoBoot/clang/i386/libsaio/acpi/Tools/iasl -o /usr/local/bin/iasl --create-dirs
            sudo chmod +x /usr/local/bin/iasl
            echo 'Done.'
        fi

        iasl=/usr/local/bin/iasl
    fi
}

#clear
rm *.hex *.aml
rm build/*.hex build/*.aml

for filename in `ls *.dsl`  
do  
        #filename="${filename##*/}"
        echo " compiling $filename  "
        iasl -ta $filename | grep Error
        mv ${filename%.*}.aml ./build/
        mv ${filename%.*}.hex ./build/

        echo "${filename%.*}.aml"
        # Everything what you want
done