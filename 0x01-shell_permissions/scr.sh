#!/bin/bash
echo "Shell Permissions" > README.md

echo "#!/bin/bash
su betty" > 0-iam_betty
chmod u+x 0-iam_betty

echo "#!/bin/bash
id -un" > 1-who_am_i
chmod u+x 1-who_am_i

echo "#!/bin/bash
groups" > 2-groups
chmod u+x 2-groups

echo "#!/bin/bash
chown betty hello" > 3-new_owner
chmod u+x 3-new_owner

echo "#!/bin/bash
touch hello" > 4-empty
chmod u+x 4-empty

echo "#!/bin/bash
chmod u+x hello" > 5-execute
chmod u+x 5-execute

echo "#!/bin/bash
chmod u+x,g+x,o+r hello" > 6-multiple_permissions
chmod u+x 6-multiple_permissions

echo "#!/bin/bash
chmod ugo+x hello" > 7-everybody
chmod u+x 7-everybody

echo "#!/bin/bash
chmod 007 hello" > 8-James_Bond
chmod u+x 8-James_Bond

echo "#!/bin/bash
chmod 753 hello" > 9-John_Doe
chmod u+x 9-John_Doe

echo "#!/bin/bash
chmod --reference=olleh hello" > 10-mirror_permissions
chmod u+x 10-mirror_permissions

echo "#!/bin/bash
chmod -R +X ." > 11-directories_permissions
chmod u+x 11-directories_permissions

echo "#!/bin/bash
mkdir -m 751 my_dir" > 12-directory_permissions
chmod u+x 12-directory_permissions

echo "#!/bin/bash
chgrp school hello" > 13-change_group
chmod u+x 13-change_group

echo "#!/bin/bash
chown -hR vincent:staff ." > 100-change_owner_and_group
chmod u+x 100-change_owner_and_group

echo "#!/bin/bash
chown -h vincent:staff _hello" > 101-symbolic_link_permissions
chmod u+x 101-symbolic_link_permissions

echo "#!/bin/bash
chown --from=guillaume betty hello" > 102-if_only
chmod u+x 102-if_only

echo "#!/bin/bash
telnet towel.blinkenlights.nl" > 103-Star_Wars
chmod u+x 103-Star_Wars

