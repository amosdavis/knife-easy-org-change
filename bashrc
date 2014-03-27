#Append this to your .bashrc and modify it appropriately.  The knife.rb in the file uses the environment variable here to interact with the correct org
function chef_setup (){
        echo "Chef Orgs"
        echo "1: important_org-core-test"
        echo "2: important_org-ae1-az1"
        echo "3: important_org-ae1-az2"
        echo "4: important_org-ae1-az3"
        read -p "Enter the Number of Your Selection: " selection

        case $selection in
                1)
                        export CHEF_ORG_NAME='important_org-core-test'
                        ;;
                2)
                        export CHEF_ORG_NAME='important_org-ae1-az1'
                        ;;
                3)
                        export CHEF_ORG_NAME='important_org-ae1-az2'
                        ;;
                4)
                        export CHEF_ORG_NAME='important_org-ae1-az3'
                        ;;
                *)
                        export CHEF_ORG_NAME=''
                        echo "No chef org configured"
                        ;;
        esac
}

