Return-Path: <open-iscsi+bncBDO7B5X3UIBBBUHO22BAMGQEFY4WM2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCFA342B58
	for <lists+open-iscsi@lfdr.de>; Sat, 20 Mar 2021 09:50:25 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id z5sf5622333qvo.16
        for <lists+open-iscsi@lfdr.de>; Sat, 20 Mar 2021 01:50:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616230224; cv=pass;
        d=google.com; s=arc-20160816;
        b=jfBgNwXUXVjIw+0aJpSrsqNrw//bd72/4+yJPt7vg+dIvZ0MRFJI1gdstLnuflb+yL
         ugwU4n+M7HakJ/XEymK/W3g3lepfMmz+JEnfH7QUczew5N/smeXVxs0YLXMW7lw8QJwa
         qIxmOSu792X+gfLrZFp4dYSzd/ZQ5gZ7WcTG2cku6P/Jlb6XJN1bqwBbihWJZ5e7d+QQ
         Fy/iwSz77NNiapu0EfUsbcaEY/jdSO24celZIjtP7MnUCXbk9I2/bDl/Mj4SgyBpBNCr
         umMVkF/qvyech23c3vFbHKbU57Clu8WUiXJfyofnK4Ysyw3ti3lbjLt2PIBY5LisuhKG
         6auA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=G/iVD42Aolg+3nSbUl9QqOyT/j90LEuKPAoFCbDlYjI=;
        b=ST8wSs2iLOMxUA5VUJDyWX3j4BzgD7QeDlj4ATK7nRXJbo6WtwmmEzGIxzI2lvxdS8
         Fa885drKMi5+Woq9jrIQCVppv9LSbWAc8DCGVeq0yokEHChYLkqHDJkXAR59XtwV1Foq
         qGFYRo2TWvSCzAR44kctK942dsgXrTXWMp+Hngi3Ti7U8ynxRrFJKdwJzbtbNW/so5fM
         f5s62zYgThWk7K9CCGOOIdR9CzZMwNOTqLQrvKikHIL6Ysix2POEwkeQw5hWolCQRR1f
         I5Uev3FfE+0UknSG8+NA6NuKL0FLka/r91ueRpSJZXn1B9ACuvUV7IVZriWxmtViS+6E
         5b9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G/iVD42Aolg+3nSbUl9QqOyT/j90LEuKPAoFCbDlYjI=;
        b=mKNvenrIXmAEwmLibf2fD+CJiXE4G9yZ7OX01dj8JO1XKSQwU37YBR3h4ZNx1v7kXe
         y7NUIf6vBIPx5wGFQMG1XKxAd4MFal5+B6lLjmIy3ZxOSUorHHovQY877wFmwEItVJM3
         WGQwefKJHEu7kv0mmA5U8LhxbDbpW6Nd2CqJxak65UrMLHc0IW79W0TLK4Cv9PQAjv8/
         5pXpfQmuVLlIsHlQS3SJlmmgw/chEAyDQLyCEe4M2YzAFNG6RftzLTxTLPMOYMMItgEi
         d82nSIiBuGdR1diN234gpWc8F5egqI2Fae+wPxHsEVfFOnJKA/+G/2n6z36KyODHWycA
         N1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G/iVD42Aolg+3nSbUl9QqOyT/j90LEuKPAoFCbDlYjI=;
        b=ARDmC+o+Qeuyzu09y6Q5M5cVqCxJ04siJxkTwLNVlQf1ElGQDnuclqfZtf5hHjLpoY
         dsycWH0k3/m/6OByloQbp9Za4IrPUzri2vFa7NxTqgdCQUttlzjGpdnqZnBXGtggsrJp
         LwUoMixK1JZNN8pPlQAlvDSW0Ctsptwile+9pz9Am76mRBWxXCQ2GXLlUqdpJMmjQHbM
         tkHp+KZDs7jw79qynOAyh3VxCO0DhiZLW3ZcTkRGbKR6OMUjgtr/kgmRIyqBD5wIWaSE
         E6ly1Y76abZJSL9dlcXWfaZLWYjzFiRtnn4gjGMvgO4wq2c166DXNcI4GWSkdOcsmSA2
         ZkcA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5303IOM9STT5pK1mQjHRwCSpL2UKSyY2B5soDAIalf+xLPv+fRU5
	JG6sDEHRMMad6yiXf2WmryA=
X-Google-Smtp-Source: ABdhPJw56ZWMawegvjECMp6ij7GxPU7/syHz9RnGtT55OvBDxM5ND4s1tJ4M/sxuxdmIbD1fUjMPzQ==
X-Received: by 2002:a0c:ef11:: with SMTP id t17mr12783225qvr.21.1616230224392;
        Sat, 20 Mar 2021 01:50:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:9c0e:: with SMTP id v14ls2073206qve.9.gmail; Sat, 20 Mar
 2021 01:50:23 -0700 (PDT)
X-Received: by 2002:a05:6214:1744:: with SMTP id dc4mr12680211qvb.40.1616230223828;
        Sat, 20 Mar 2021 01:50:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616230223; cv=none;
        d=google.com; s=arc-20160816;
        b=OcVxWxTGOPfxSM05gyYdP0Ie0yZYNukxHcM6Q9dJEllYoq8U+KkuaBEHs7nCstpn+Y
         mSizJAw1Qz3MDUav6k1n3DTiDRbYnfBqEJrUqXZqGWWnAg/c9fC6DmVua+KkGqkINk7q
         8bdhmE5GDTt6c9OfdMqNFq7gdzBgdvZbTzJt25KkMYBH3WPm+uVwKB8IhQgxiIu66gbl
         yw/kr2RoKTuf5hVvNugKAsrvkTWdSSfDdesXeMx5Btc5fzdpjpTTHZRi2ZGAL6qnVSo1
         PPLJZXXmRSsLqa6BxvYkY9A3LjTwt9JWeO0OEC6QePq4XYe4iL6Ur+hlufmNKHQZyRmk
         XPnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=NSH6DhJhxbNbQbsIHW5qKjRRMpT7Wua33qXcN94D4wo=;
        b=prmYP7Uxhh6OZyjgTbJRyIXkqYKL74tJulceWAzgDF8QJqjcaIyQMND0uumiE1Z3tX
         7onJ+JnvOFywUIE6t6cOAOVmHJ9RNpTIKyauYAfIcrYHwsVvRojBNw+MwXo6CkHGYSne
         7K0E2hwvtCrZrIRdWc0lRBWTjk+4ty4jJLYEfHRqmPKB5pGao2G/CgQLiT7oZ88Gb0oW
         6zFWTwJet9zztzjA+np/zkHsxwTBY8GLRhrhoGRMCUjjNYyaOyyHI5o/Wj/P547MFFMn
         hP2vj7UGW8xAT/gzVSeXaE8VoiwOTD06Qewe9oWb3q1ng1ACCgeB+NaUmShjUc8uObQ8
         VvzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id b201si486428qkg.6.2021.03.20.01.50.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 01:50:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4F2ZCW6PxPzPl6R;
	Sat, 20 Mar 2021 16:47:51 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.498.0; Sat, 20 Mar 2021
 16:50:10 +0800
From: Wu Bo <wubo40@huawei.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <michaelc@cs.wisc.edu>,
	<James.Bottomley@suse.de>, <linux-scsi@vger.kernel.org>,
	<open-iscsi@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <linfeilong@huawei.com>, <wubo40@huawei.com>, <haowenchao@huawei.com>
Subject: [PATCH] scsi: iscsi_tcp: Fix use-after-free when do get_host_param
Date: Sat, 20 Mar 2021 17:08:04 +0800
Message-ID: <1616231284-463105-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=huawei.com
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

When logout of iscsi session, to do destroy session process, 
tcp_sw_host->session is not set to NULL.
Get host parameters access to tcp_sw_host->session at the same time,
but the session has been released at this time.

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
[29844.929228]                                                           ^
[29844.929230]  ffff80002c0b8f80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[29844.929232]  ffff80002c0b9000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[29844.929232] ==================================================================
[29844.929234] Disabling lock debugging due to kernel taint
[29844.969534] scsi host2: iSCSI Initiator over TCP/IP

Fixes: a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param libiscsi function")
Signed-off-by: Wu Bo <wubo40@huawei.com>
Signed-off-by: WenChao Hao <haowenchao@huawei.com>
---
 drivers/scsi/iscsi_tcp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index dd33ce0..98d782d 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -901,10 +901,12 @@ static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
 {
 	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
 	struct iscsi_session *session = cls_session->dd_data;
+	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
 
 	if (WARN_ON_ONCE(session->leadconn))
 		return;
 
+	tcp_sw_host->session = NULL;
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
 	iscsi_session_teardown(cls_session);
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1616231284-463105-1-git-send-email-wubo40%40huawei.com.
