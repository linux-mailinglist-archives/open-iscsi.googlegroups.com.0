Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB7ETWSBQMGQEKDNEELA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EE69D3560AE
	for <lists+open-iscsi@lfdr.de>; Wed,  7 Apr 2021 03:25:17 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id p18sf7395788qvn.19
        for <lists+open-iscsi@lfdr.de>; Tue, 06 Apr 2021 18:25:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617758716; cv=pass;
        d=google.com; s=arc-20160816;
        b=jo2WPrZtN5DKgbFpw4vBz6qdKSRKUV23+W5XW24QZg4rOSlMZPhsPovjS9RD5t1uNv
         jaHLAf8qkp70Ku/eJYyGug02f9AVyfmz1VS3KFvZKYFu74J5Xi00A/4wfH/9139OQOtC
         C+xrcPkSHDZBEeEFqX6UwZHFLLxa9nrE37+w0VG6wKVYM9oWNTtUMUh0eBU/ZmLGR2TP
         CXPabI3Ra8b0JF61pVMFuxWpIgEPZQjZJxh6OycD60CbL/DGlfPakmDpFVi5U1L46wHw
         wHWplby8XddVwmILEafcXYbeas5eYIc5Fhlb1wUJ1gBJUsWEm3aFWHKFaAtavWwtfabG
         PIpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=IWYLZXAd9euJBCXi+lsXXI6ZcsebzEBpQpbBMXc7IrU=;
        b=bgMEHDN2LxoTG1m1J7aqzY/ksEfoRpZ3XRex/MiyuUHu83tSVmm4zLmDB6xCXUyNHw
         7GyPz6xDAbObtE1jfDYbXP3UJCXQheWCT2SUIEvoPpg7F/+qsQbvBSXO1AX47RHtLWjN
         n/ZPe0BdXn03NSP1hQ1JqPHc22dAbMmrf/SdivdFRnr2fizn2A4S6mL/V0QwwLLwnLVL
         C2MRZ1FY0aZyTv3qwwWl/+t3iTSzeC5ALekBAAtcA0RcCJAb8U0ednoNfd9zzBm+swTU
         17J9mrt/4nwOEQ8k5s8oexlMLfTLv8U+0lZ1ib55aPUlm1bSFUEmd3ogAy7EFbuZxRYr
         x0tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IWYLZXAd9euJBCXi+lsXXI6ZcsebzEBpQpbBMXc7IrU=;
        b=TF64NZoaZUh2M4Pxa9ZU2SG/LfNDG1aiSDQJOWrVPeALgH3ktp1EIj2Xm6nlkKmnPp
         GsYIgsAb8SaTIR0CXxKgyguuuvyXy9+NOIFkrfzUrzmj1j9SHIeVE0p/PHvPWvMHkeAM
         suw+Rl3EWJyH/Qx4yK5kesY7ARhnfms/ncg1MD06JgaGVOXRMCTwC9ywXOfFKGNPzGMU
         CpdxAJR+BWBfsd10mZrHrM+6Pidiqvht2x/rdXNVSqW09LIVBwAoChOhEjXhkkKe8l0q
         1akCfeT9RQdw6riFnwP025pqJQwmSo3In4wGWOfudJO020R/jZP63HXxtGFlXPpYyZPY
         aPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IWYLZXAd9euJBCXi+lsXXI6ZcsebzEBpQpbBMXc7IrU=;
        b=kEm4Wc8mjeU77iA9FOxkkrv0JIAqTW0NcNWIwfmTLET1NyxlMYuxFBaqxHB6EG+4Oy
         6DurOJ/nhYa7VQkRFFJjxQhLMQPJ0Czr+fQW30EPPrQgFrG6PgydWoUT1AzNANkbKjG9
         M6YY4Xn1BKA4bHfKlDHvDTqsOjgQ0DHTjhgeBT5pmxe6t05oA4WLWUSre5bwW12vh9Pi
         EhC3UJ1Z9I2nDuxUSezoZxi4QmU9rCEOTl8s8eKDgdf++T8uXYctzISKenJIXjto/5X6
         Roj0BUtu7/PtIT2kzfKfwurHh8p45/m0qOLMdVqgd9QwETNRTzAFf6Kwp+tiQZ8/LvV3
         AgYw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532+2eohdwAbIcXh0XJLV++OQz25P70q79xRtI+wcG2zY6ABBGQb
	0QecN4AO0aMzpWfRWhGjwcY=
X-Google-Smtp-Source: ABdhPJxvBrfQowlpzaEIASKizv3qEZgB6++l5oNtv6sxXoFP95T+Oi+hY8xXU/itgBXoUDWRQYAKVA==
X-Received: by 2002:a05:622a:d3:: with SMTP id p19mr703736qtw.53.1617758716697;
        Tue, 06 Apr 2021 18:25:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls238309qta.3.gmail; Tue, 06 Apr
 2021 18:25:16 -0700 (PDT)
X-Received: by 2002:ac8:108b:: with SMTP id a11mr711231qtj.16.1617758716219;
        Tue, 06 Apr 2021 18:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617758716; cv=none;
        d=google.com; s=arc-20160816;
        b=i0XRZ0nDZlAO42Ur4udPc/Q1jtcuMQhN+TXznT0Vq2kUgLKtVSQztE5c/3X5DGgq6+
         O2xqognEdNpNkj/FFrG6Th6xN37fMtZPI8IdKVBmCO6BX7wY5fo5tjNpo9xyZjWEiNKH
         rDSyyswRclVtr/NojDN5tToTrZUkFXtjSQuuFAyPb9yqiJxf5xy7iB6Yv9SrZzZlkR8u
         FXIqso4kvjNvN7NxGKqAL1eJ0sx3g15kuTWDreSN1vJFsM293flWjnabaNXjTzg9JZx+
         5oYcO6djPshLHIw6OtmTAr7M9qhhITZLmi4QfaM6QybxbqdXKXNyPPzU/sMd2TUuasWd
         2VpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=uw7u1MTZoGPPg3uUpyKQ+CpyJt/8Fx0Ib5lrQoLsUv4=;
        b=cOnUasWtjkGICicT+F2GVp2madhF/65fL/1M8xqheOysYoYONq83HgUXN6nB8K2PG6
         VZ32RxFBbyFUN9j5yV4v0qC+Hppp30q9orS1r4+NEsuemxCFG4DrbA7b8+zwdz0R8wIL
         UF2FdW6X5NO9Ndw7IY0YN4AiMW4K/e4fbyEVP0NPujt/06sy4EUGz+7P4kqZnrYLzlRE
         wYNtf6i2pTkyupDEohRDQM/406Si7MU2lrXqXKM8jz7hflf6fsgVOSSf6nRHyHXyl7EH
         I/xmsITlPzIxm7kh1XnqdjqS5f3S9Z4+mfFgcEsCScoi5soE3w5eW2e9Z1g6e/m18O/U
         r+Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id b4si1370533qkh.2.2021.04.06.18.25.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 18:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FFRSj1DtGzpVNB;
	Wed,  7 Apr 2021 09:21:57 +0800 (CST)
Received: from huawei.com (10.175.101.6) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.498.0; Wed, 7 Apr 2021
 09:24:32 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E
 . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Wu Bo <wubo40@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 0/2] Fix use-after-free in iscsi_sw_tcp_host_get_param()
Date: Wed, 7 Apr 2021 09:24:48 +0800
Message-ID: <20210407012450.97754-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Following stack is reported by KASAN:

[29844.848044] sd 2:0:0:1: [sdj] Synchronizing SCSI cache
[29844.923745] scsi 2:0:0:1: alua: Detached
[29844.927840] ==================================================================
[29844.927861] BUG: KASAN: use-after-free in iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
[29844.927864] Read of size 8 at addr ffff80002c0b8f68 by task iscsiadm/523945
[29844.927871] CPU: 1 PID: 523945 Comm: iscsiadm Kdump: loaded Not tainted 4.19.90.kasan.aarch64
[29844.927873] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
[29844.927875] Call trace:
[29844.927884]  dump_backtrace+0x0/0x270
[29844.927886]  show_stack+0x24/0x30
[29844.927895]  dump_stack+0xc4/0x120
[29844.927902]  print_address_description+0x68/0x278
[29844.927904]  kasan_report+0x20c/0x338
[29844.927906]  __asan_load8+0x88/0xb0
[29844.927910]  iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
[29844.927932]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0x84/0xa0 [scsi_transport_iscsi]
[29844.927938]  dev_attr_show+0x48/0x90
[29844.927943]  sysfs_kf_seq_show+0x100/0x1e0
[29844.927946]  kernfs_seq_show+0x88/0xa0
[29844.927949]  seq_read+0x164/0x748
[29844.927951]  kernfs_fop_read+0x204/0x308
[29844.927956]  __vfs_read+0xd4/0x2d8
[29844.927958]  vfs_read+0xa8/0x198
[29844.927960]  ksys_read+0xd0/0x180
[29844.927962]  __arm64_sys_read+0x4c/0x60
[29844.927966]  el0_svc_common+0xa8/0x230
[29844.927969]  el0_svc_handler+0xdc/0x138
[29844.927971]  el0_svc+0x10/0x218

[29844.928063] Freed by task 53358:
[29844.928066]  __kasan_slab_free+0x120/0x228
[29844.928068]  kasan_slab_free+0x10/0x18
[29844.928069]  kfree+0x98/0x278
[29844.928083]  iscsi_session_release+0x84/0xa0 [scsi_transport_iscsi]
[29844.928085]  device_release+0x4c/0x100
[29844.928089]  kobject_put+0xc4/0x288
[29844.928091]  put_device+0x24/0x30
[29844.928105]  iscsi_free_session+0x60/0x70 [scsi_transport_iscsi]
[29844.928112]  iscsi_session_teardown+0x134/0x158 [libiscsi]
[29844.928116]  iscsi_sw_tcp_session_destroy+0x7c/0xd8 [iscsi_tcp]
[29844.928129]  iscsi_if_rx+0x1538/0x1f00 [scsi_transport_iscsi]
[29844.928131]  netlink_unicast+0x338/0x3c8
[29844.928133]  netlink_sendmsg+0x51c/0x588
[29844.928135]  sock_sendmsg+0x74/0x98
[29844.928137]  ___sys_sendmsg+0x434/0x470
[29844.928139]  __sys_sendmsg+0xd4/0x148
[29844.928141]  __arm64_sys_sendmsg+0x50/0x60
[29844.928143]  el0_svc_common+0xa8/0x230
[29844.928146]  el0_svc_handler+0xdc/0x138
[29844.928147]  el0_svc+0x10/0x218
[29844.928148]
[29844.928150] The buggy address belongs to the object at ffff80002c0b8880#012 which belongs to the cache kmalloc-2048 of size 2048
[29844.928153] The buggy address is located 1768 bytes inside of#012 2048-byte region [ffff80002c0b8880, ffff80002c0b9080)
[29844.928154] The buggy address belongs to the page:
[29844.928158] page:ffff7e0000b02e00 count:1 mapcount:0 mapping:ffff8000d8402600 index:0x0 compound_mapcount: 0
[29844.928902] flags: 0x7fffe0000008100(slab|head)
[29844.929215] raw: 07fffe0000008100 ffff7e0003535e08 ffff7e00024a9408 ffff8000d8402600
[29844.929217] raw: 0000000000000000 00000000000f000f 00000001ffffffff 0000000000000000
[29844.929219] page dumped because: kasan: bad access detected
[29844.929219]
[29844.929221] Memory state around the buggy address:
[29844.929223]  ffff80002c0b8e00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[29844.929225]  ffff80002c0b8e80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[29844.929227] >ffff80002c0b8f00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[29844.929228]
^
[29844.929230]  ffff80002c0b8f80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[29844.929232]  ffff80002c0b9000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[29844.929232]
==================================================================
[29844.929234] Disabling lock debugging due to kernel taint
[29844.969534] scsi host2: iSCSI Initiator over TCP/IP

Fix this issue by freeing iscsi session after host already removed from sysfs.

Wenchao Hao (2):
  scsi: libiscsi: Split iscsi_session_teardown() to destroy and free
  scsi: iscsi_tcp: Fix use-after-free in iscsi_sw_tcp_host_get_param()

 drivers/scsi/iscsi_tcp.c | 27 ++++++++++++++++++---------
 drivers/scsi/libiscsi.c  | 19 ++++++++++++-------
 include/scsi/libiscsi.h  |  1 +
 3 files changed, 31 insertions(+), 16 deletions(-)

-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210407012450.97754-1-haowenchao%40huawei.com.
