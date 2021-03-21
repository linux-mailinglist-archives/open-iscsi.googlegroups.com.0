Return-Path: <open-iscsi+bncBDO7B5X3UIBBBSWP3OBAMGQEW4E33IA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id C04D8343180
	for <lists+open-iscsi@lfdr.de>; Sun, 21 Mar 2021 07:29:31 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id r1sf6716252uaf.4
        for <lists+open-iscsi@lfdr.de>; Sat, 20 Mar 2021 23:29:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616308170; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hz6zB3xey3CUvuLVq2ITj2NXzFnFXerPQvso6cEwX00Tvazhfiud3+zQ2HSNRBBKoW
         gcvDQ9uayXViIklshySkzLDBZPrJMve8+AnJVE6dd/pQP1cypGMwrEqdTeWxnZ7H2Puu
         t4pUTUqlNwNoq59ZfZEot01x+dLc2tc0EBc1d1soi+5Tcv9aLy18P4xvnMZmumK2wVKS
         iSN5WqZ8w6QebsuSr7Gc9wkiTiA80iNhUMQfzeDXGQJhOJ4E0sduXMvxfrvQ8/ZeTSKC
         Sho6TH7bv3oYzRhMDnnPnflmIafpa6bOsUCzpY2X842CRAHPICjdjAr2wJfC9SpkgeGD
         JizQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=lN8orQ8/Gh9IGPdYiv1kmSuELT0Nm8StySOADPfmMJE=;
        b=K+VgOWpdCqCeKn10mHEHwV8fIhEMZoplQmV3MlTQ+Ju0zx3pIYwGZ0B3n2WK71dtZg
         fiwy80eDfd/1yuvmqQogqFW+Ms5l5S1IWLY9HhR/HyOGULUluBXr+IjEr/pGuIMM3rW0
         p9++0b6HPkC9EWHMOICv9nm7VrwOM+u8E3c+54wyOnpExy+EoPXPYEL048ygbxmLrQ/j
         P8BUauJUQyKYvjUqTFYjd91uuZ6kLhCwvIuS4VfjQFvDEF2ib9g2o/9NZNXWsphetN3k
         2GpKpQo+1W/xDe3+P0+W4sS0OoJiNT3R3G0ZxG0b6J1ggatKBQWbiVfK7cbzxphBFwTI
         EwBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lN8orQ8/Gh9IGPdYiv1kmSuELT0Nm8StySOADPfmMJE=;
        b=NfAK2nFPy3ZgNs/2CjlAxGfZ1fLT4VdZSAvMtRfkF71qIAHfuXlw2aQKjQmGcX4xH4
         hfnn7YhCcnebL7eR+fVVg91gN1upu+RUAM4yNIOgoGi7fDF/soMULm7vVdnVgmQFev3K
         csRnO6C4A/2BPiOXZFg7yLb2KPq6EZCAc65DIkzhmKSQXtRPdXkf9dZucbmKmwedZ1CD
         wRL9j86FIwOWNXEEkKctJJawgI2vBZve7x64lUlSbVmvv0ki7w1kWVbQ4KP16Ni/+WL/
         arTH4pwM4XjQyRZiqzeGErNssUJTwwYsteLn7wo+j/fBxyLwThxUw5MjGacdzAHpuO93
         cwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lN8orQ8/Gh9IGPdYiv1kmSuELT0Nm8StySOADPfmMJE=;
        b=IYZ6bh2RzL6GrTyQu/5OHJOlcHcdZUStUN0XxIqycQ9Y7OvYomftwAPGxoWwiYLCCN
         zCTq3UjJ00Ia+XtcCTnw+pu0GDPV7rqnVmqGfly0Gm0mFHHBgfyz4h4QajEzLmWeEPI0
         f7pbOR6cIf46hrpCV/z2LiAIF1yqfozcCwL63lqlDf/A9CNVAWas0D7tRB+JNVlpeTtW
         h4gb7r+6tdahbsVe9pHZhmVjc+8iw3v3jLLsIZlhO7wmsdj64xncxUZexAcUl460PhNy
         PpigBr5NeTUdYfbB1prUfuKjzYuuWMmbL2ToeBbzErGI4wiO3Jfb7ivvkVpXCJKc7gLU
         +kHg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532ZfEKcHXJT2Wy4nu2gicv3fwXmhN5EzTFkjX0CfjNFheTzkU8W
	59X3zvqOTecR4sqXGu3xkY4=
X-Google-Smtp-Source: ABdhPJxGkPvStSPgxehGla6SdHoXE1N59f6bJsAP4Fs2GP+Tzkb8BD6QGN5m4FAeDjQg2OUr5kG5bw==
X-Received: by 2002:a9f:2069:: with SMTP id 96mr2730302uam.110.1616308170716;
        Sat, 20 Mar 2021 23:29:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:6243:: with SMTP id w64ls1138052vsb.0.gmail; Sat, 20 Mar
 2021 23:29:30 -0700 (PDT)
X-Received: by 2002:a05:6102:e8a:: with SMTP id l10mr6059370vst.19.1616308170225;
        Sat, 20 Mar 2021 23:29:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616308170; cv=none;
        d=google.com; s=arc-20160816;
        b=E087XT4ofD8+CFWrW+hmZH58a/KvV8XLHAYGMAN2j+AbJuYn77srYLUo6cN6HtdSoG
         fAQP9AXyEDSdprQo+Fre6dQd5m0bVi2l/qXRj2O7oGUD9bVn1tYhipg/7PQISYo8aOqm
         2rL5JbA9lowrun1qG8QCioIYep28QpANaoVdwQBgPIANp1NiVyCS2YQ5IJdpFkcGgGbx
         yNJCW0HaeqEB95M4rBtDyVk8bYpdk5Ww+NDOTTspSXYmNQ0txW3GXNjQVbDkHhTrGbQL
         GPnovwkDhhDm+jImHCiwb0T6lrTNiTUU/hTxkBfIV4QyeUqH/kBZU01P3ehpDPsTrUgS
         kOFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=I+21u0MmQPRzp512C1i9ZXRiKyHIsGieqSL4zgWWLJQ=;
        b=tYvrJqPXr6CUGTjNFbglh4bOuMyvKJbW9tgRHkjRUsdDiUZF03F54xttNXBukfVJk9
         4TSgpAfhP38cyh06X+KTSQvqNpgKASTCK7LX2MkLv+IGsFd/UBWM5qY6qsiJPOCrmjut
         nV1qpUmZCbftac92nTPeuNGXXbb2sxf5qZGQPRjWheXcePH+hJwyl/7gPGFXpyK8GBq1
         3BgKfajRPxKFcIEPBf05oi3rMQlJK4/yvKJwniFYUtsRajKfyWgabJuSb5zzBYfqKYyA
         P7ub2s2GG18CFkQp5yycDh2s3JXdFu8ya+4A86eSZNCCuxFsIF7AlgK9v5tC1NDFH8nV
         Dr7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id p23si553281vkm.1.2021.03.20.23.29.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 23:29:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4F372V5ZkNzNpTd;
	Sun, 21 Mar 2021 14:26:58 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.498.0; Sun, 21 Mar 2021
 14:29:17 +0800
From: Wu Bo <wubo40@huawei.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <michaelc@cs.wisc.edu>,
	<James.Bottomley@suse.de>
CC: <linux-scsi@vger.kernel.org>, <open-iscsi@googlegroups.com>,
	<linux-kernel@vger.kernel.org>, <linfeilong@huawei.com>, <wubo40@huawei.com>,
	<haowenchao@huawei.com>
Subject: [PATCH V2] scsi: iscsi_tcp: Fix use-after-free when do get_host_param
Date: Sun, 21 Mar 2021 14:47:09 +0800
Message-ID: <1616309229-612596-1-git-send-email-wubo40@huawei.com>
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

From: Wu Bo <wubo40@huawei.com>

iscsid(cpu1): Logout of iscsi session, will do destroy session, 
tcp_sw_host->session is not set to NULL before release the iscsi session.
in the iscsi_sw_tcp_session_destroy(). 

iscsadm(cpu2): Get host parameters access to tcp_sw_host->session in the
iscsi_sw_tcp_host_get_param(), tcp_sw_host->session is not NULL, 
but pointed to a freed space.

Add ihost->lock and kref to protect the session,
between get host parameters and destroy iscsi session. 

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
 drivers/scsi/iscsi_tcp.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 93ce990..579aa80 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -783,22 +783,32 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 				       enum iscsi_host_param param, char *buf)
 {
 	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
-	struct iscsi_session *session = tcp_sw_host->session;
+	struct iscsi_session *session;
+	struct iscsi_host *ihost = shost_priv(shost);
 	struct iscsi_conn *conn;
 	struct iscsi_tcp_conn *tcp_conn;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn;
 	struct sockaddr_in6 addr;
+	unsigned long flags;
 	int rc;
 
 	switch (param) {
 	case ISCSI_HOST_PARAM_IPADDRESS:
-		if (!session)
+		spin_lock_irqsave(&ihost->lock, flags);
+		session = tcp_sw_host->session;
+		if (!session) {
+			spin_unlock_irqrestore(&ihost->lock, flags);
 			return -ENOTCONN;
+		}
+
+		get_device(&(session->cls_session->dev));
+		spin_unlock_irqrestore(&ihost->lock, flags);
 
 		spin_lock_bh(&session->frwd_lock);
 		conn = session->leadconn;
 		if (!conn) {
 			spin_unlock_bh(&session->frwd_lock);
+			put_device(&(session->cls_session->dev));
 			return -ENOTCONN;
 		}
 		tcp_conn = conn->dd_data;
@@ -806,12 +816,14 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 		tcp_sw_conn = tcp_conn->dd_data;
 		if (!tcp_sw_conn->sock) {
 			spin_unlock_bh(&session->frwd_lock);
+			put_device(&(session->cls_session->dev));
 			return -ENOTCONN;
 		}
 
 		rc = kernel_getsockname(tcp_sw_conn->sock,
 					(struct sockaddr *)&addr);
 		spin_unlock_bh(&session->frwd_lock);
+		put_device(&(session->cls_session->dev));
 		if (rc < 0)
 			return rc;
 
@@ -901,10 +913,17 @@ static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
 {
 	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
 	struct iscsi_session *session = cls_session->dd_data;
+	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
+	struct iscsi_host *ihost = shost_priv(shost);
+	unsigned long flags;
 
 	if (WARN_ON_ONCE(session->leadconn))
 		return;
 
+	spin_lock_irqsave(&ihost->lock, flags);
+	tcp_sw_host->session = NULL;
+	spin_unlock_irqrestore(&ihost->lock, flags);
+
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
 	iscsi_session_teardown(cls_session);
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1616309229-612596-1-git-send-email-wubo40%40huawei.com.
