#!/bin/bash

#  publish.sh
#  SSR
#
#  Created by ourfor on 2020/2/7.
#  Copyright © 2019 ourfor. All rights reserved.
source ./release.sh


read -p "请输入版本描述: " release_note
pushRelease ${release_note}
generateAppcast ${release_note}
commit

rm -rf "${DMG_TMP}" "${APP_PATH}" "${V2rayU_RELEASE}"
echo "Done"
