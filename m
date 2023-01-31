Return-Path: <open-iscsi+bncBDTZTRGMXIFBBG624SPAMGQEUWCHLDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E31868303E
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:00:46 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id t20-20020adfba54000000b002be0eb97f4fsf2502701wrg.8
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:00:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177246; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwo/l13M+FIo7R11NVeNLSGSV522YsDbbe6yluMbBhhDui6g2n5hlevhdltiWQ4uZg
         9sYv09y7q8FPj0ibqVxmMjd+XsG8SuIma6N/Bb6MO2eQsoegAsdVtEuMH2BYRQCt1W8m
         +44giNMO8ud1SBBoAlPOSGloy0QULF1zkXBJ0omdrP5TKHL3J5E64S57aYkNqbUx4TW6
         734j+ZBDg6fjtrBlzDL5mEDl2RR8fp//Fgcbz9Xe+5EoVKw4PtU46fXR1nRT1UwyfNjM
         rLiEAeMS3v0si0DHMh8DEQSnXu0Ps/TWu6ogFlWGp+Qf5p4A1OHVZUn7MVbyd5ZVH2vu
         8yHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=bfJcqArYPRutVKQaPZgLKjmFLGwmGblldO+hxbuA29g=;
        b=KO/0h4AoOAEkXHtihOTIRo9tL1VF5mSmmZTpfu45ZKkJwMMB9Qu/yjjp0KG63QSgiG
         DXWELsB3PMM/fP/goeBZc/jxXUyEb7Wpu9lLl9ytSU1pUEGrjeNuabFjvP1g+wVg2eC9
         KjUyjjmbVzmGIbe/1ii9bXN1CNH08FoqGq/5je51tknAPq+nfrEWVZpIRCdqkEHoCwtY
         6lTTvNNbWF4X92cCGEWZDGpwwJkPrbTB7p3SL0Hc47YFV5oxdmbC66f6zhV544LevRKT
         WmBKxGEjVtdeW/tHZfLuS3jy3ekfvo3tToS1fsF6f/zGzRA39+VR0jr1yjMZVtlC7wnl
         Wajg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bahUrsKg;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bfJcqArYPRutVKQaPZgLKjmFLGwmGblldO+hxbuA29g=;
        b=pFA+I/5pxZHCIOEO/03v+fP9VqWaZq909DJOy7nrNeEtLIQyu5CesypYJeur0ezG/A
         GP3vYocew/q9YOw6S38JlMOCRQYNTnWNnjnsOTgg7gbah2wKho+yISE2I5i9qMhhoG5c
         DV5Ez4F4nJQQW2yMhCFKvMPVrHiO62jt2VfvH9f0k86ZATKETKk4OWq4FiljiVsMPhzT
         wCT9oPavXWMJvfIuH+L56pIIj7TJ7CR0Ay7cBMizzc4h+ebjwzQBzvX0raDSd/aLkqv+
         dvt00RQlxD27Ckezxmuiy7v0YDOGd/6bldsFXSAnvyXdnkhyHx2g9PV25WbVNkFtYAr4
         suFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bfJcqArYPRutVKQaPZgLKjmFLGwmGblldO+hxbuA29g=;
        b=ojJJRb1qwI3DMV2erMQq+ICT7vnX8ODUxKWRCdAn18YkgDNmUSWLgvilowvS9ampe2
         5t/aHlQ3BQIYpBMSNdk8guWPEjPULajgTT2q96oqxt6tsYQSnR8M7hf7pUB+pxSshBQw
         d7hw5Q4DxRsUfUArjELW4O+Rc4eNDD9J3HyJqOZXZ7ddob3kuXCt+gGkjeRGMEKVDzBi
         iPEFQdmpcLC91CbdeOTkWK6xcr2YGNocWWgXDrOn2hK43IROHciXH8TZKBe0nSwxQ6By
         aYHY3qCFZ+J7ZdGr6fBuyOi71AoA1nwhWfyUha2n66dP1aZkIRpt3YqfpsIVrcvrMEJK
         U1xQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2krp205O6q6BOtM3WsEsNXwr0dcZNfKOj30BYQ1gnVXnA6b+0QdO
	9IijLY3kQ6mDSfYOv5GHQTE=
X-Google-Smtp-Source: AMrXdXvSInTbSh3pTR5AM+xN3qeGKOfujstMtW83Td78L+tx7OLSN/uCl/G2ZbeaRrKeCXm188WVDQ==
X-Received: by 2002:a05:600c:4f41:b0:3db:14e1:d16e with SMTP id m1-20020a05600c4f4100b003db14e1d16emr4034822wmq.35.1675177245681;
        Tue, 31 Jan 2023 07:00:45 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:42:b0:2bf:ccef:53a6 with SMTP id
 k2-20020a056000004200b002bfccef53a6ls1828861wrx.0.-pod-prod-gmail; Tue, 31
 Jan 2023 07:00:42 -0800 (PST)
X-Received: by 2002:a5d:678f:0:b0:2bf:e46d:387d with SMTP id v15-20020a5d678f000000b002bfe46d387dmr10395277wru.53.1675177242619;
        Tue, 31 Jan 2023 07:00:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177242; cv=none;
        d=google.com; s=arc-20160816;
        b=BkJvfITP8Z97bMt0UKSIPRJp93bu5VEpid/1NfwQoxveamQBWKORsxWI9U7f5m/hM8
         lm5iuF1KAU/Ul14LhRhQEljiwbHbaZDa5bDDt3jKFL0iYywWHaRFflZsbJb6ig3lhS8z
         9LVWZC7+UxQoXAtqmXkGimVztGtJrPbXQjqhonD7lpmpOvrZyqlthiF14NqZ3UOi09Bm
         Q9HoualuTqDP7QlAibxh8/xKOPz3UU86fgFHA/CgyrBFkatdRYEL2KANdjQdKf89LH3X
         OxI7yggS4R+7UPCjqnQFg8acD9OPRQy1AuZa5iCAl+PETz+ZrrZYWry+8NLCKtrKr17l
         387w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fkW3z7/aWaCKPnpUur4IyXTGkMq3B7xas3QRZT0eBBg=;
        b=nwmkgsdtMhQBGDLmL9NHfkyJlg+Yv+EBbsCCooY40rn/+kIwaRgJ5RaHtqAuja7CnH
         104TX+qUoDLEzHXKP3S8cA7X5A31h8mroenItYkE2wA4adz/6GS6lcys+t0OhCvHCBCO
         KvKXbb39MmdAi+OFr9PC1cJiVINM6oS8eqSvSxQdhm8J3CuoXa34CGlV7EVrH7a+AskN
         YrJzIMuT+uTGmNK37GNj5EwStxfYEM1AvuAWVpN4m77ZLzsr1uIm5ejHsZZ5xl5v8QUt
         OcZ72wQUVZr1CjDrbyQaUht9Mf64/3Ll0qZO4+E/EKjGhx5dy1zq6TTgHgRrpBSVJnst
         nI9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bahUrsKg;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id y9-20020a056000168900b00241d0141fbcsi775584wrd.8.2023.01.31.07.00.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:00:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E27A3B81D4E;
	Tue, 31 Jan 2023 15:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32389C433D2;
	Tue, 31 Jan 2023 15:00:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	Ding Hui <dinghui@sangfor.com.cn>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.15 05/12] scsi: iscsi_tcp: Fix UAF during logout when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 10:00:23 -0500
Message-Id: <20230131150030.1250104-5-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131150030.1250104-1-sashal@kernel.org>
References: <20230131150030.1250104-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bahUrsKg;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit 6f1d64b13097e85abda0f91b5638000afc5f9a06 ]

Bug report and analysis from Ding Hui.

During iSCSI session logout, if another task accesses the shost ipaddress
attr, we can get a KASAN UAF report like this:

[  276.942144] BUG: KASAN: use-after-free in _raw_spin_lock_bh+0x78/0xe0
[  276.942535] Write of size 4 at addr ffff8881053b45b8 by task cat/4088
[  276.943511] CPU: 2 PID: 4088 Comm: cat Tainted: G            E      6.1.0-rc8+ #3
[  276.943997] Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 11/12/2020
[  276.944470] Call Trace:
[  276.944943]  <TASK>
[  276.945397]  dump_stack_lvl+0x34/0x48
[  276.945887]  print_address_description.constprop.0+0x86/0x1e7
[  276.946421]  print_report+0x36/0x4f
[  276.947358]  kasan_report+0xad/0x130
[  276.948234]  kasan_check_range+0x35/0x1c0
[  276.948674]  _raw_spin_lock_bh+0x78/0xe0
[  276.949989]  iscsi_sw_tcp_host_get_param+0xad/0x2e0 [iscsi_tcp]
[  276.951765]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0xe9/0x130 [scsi_transport_iscsi]
[  276.952185]  dev_attr_show+0x3f/0x80
[  276.953005]  sysfs_kf_seq_show+0x1fb/0x3e0
[  276.953401]  seq_read_iter+0x402/0x1020
[  276.954260]  vfs_read+0x532/0x7b0
[  276.955113]  ksys_read+0xed/0x1c0
[  276.955952]  do_syscall_64+0x38/0x90
[  276.956347]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[  276.956769] RIP: 0033:0x7f5d3a679222
[  276.957161] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 32 c0 0b 00 e8 a5 fe 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
[  276.958009] RSP: 002b:00007ffc864d16a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
[  276.958431] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f5d3a679222
[  276.958857] RDX: 0000000000020000 RSI: 00007f5d3a4fe000 RDI: 0000000000000003
[  276.959281] RBP: 00007f5d3a4fe000 R08: 00000000ffffffff R09: 0000000000000000
[  276.959682] R10: 0000000000000022 R11: 0000000000000246 R12: 0000000000020000
[  276.960126] R13: 0000000000000003 R14: 0000000000000000 R15: 0000557a26dada58
[  276.960536]  </TASK>
[  276.961357] Allocated by task 2209:
[  276.961756]  kasan_save_stack+0x1e/0x40
[  276.962170]  kasan_set_track+0x21/0x30
[  276.962557]  __kasan_kmalloc+0x7e/0x90
[  276.962923]  __kmalloc+0x5b/0x140
[  276.963308]  iscsi_alloc_session+0x28/0x840 [scsi_transport_iscsi]
[  276.963712]  iscsi_session_setup+0xda/0xba0 [libiscsi]
[  276.964078]  iscsi_sw_tcp_session_create+0x1fd/0x330 [iscsi_tcp]
[  276.964431]  iscsi_if_create_session.isra.0+0x50/0x260 [scsi_transport_iscsi]
[  276.964793]  iscsi_if_recv_msg+0xc5a/0x2660 [scsi_transport_iscsi]
[  276.965153]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
[  276.965546]  netlink_unicast+0x4d5/0x7b0
[  276.965905]  netlink_sendmsg+0x78d/0xc30
[  276.966236]  sock_sendmsg+0xe5/0x120
[  276.966576]  ____sys_sendmsg+0x5fe/0x860
[  276.966923]  ___sys_sendmsg+0xe0/0x170
[  276.967300]  __sys_sendmsg+0xc8/0x170
[  276.967666]  do_syscall_64+0x38/0x90
[  276.968028]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[  276.968773] Freed by task 2209:
[  276.969111]  kasan_save_stack+0x1e/0x40
[  276.969449]  kasan_set_track+0x21/0x30
[  276.969789]  kasan_save_free_info+0x2a/0x50
[  276.970146]  __kasan_slab_free+0x106/0x190
[  276.970470]  __kmem_cache_free+0x133/0x270
[  276.970816]  device_release+0x98/0x210
[  276.971145]  kobject_cleanup+0x101/0x360
[  276.971462]  iscsi_session_teardown+0x3fb/0x530 [libiscsi]
[  276.971775]  iscsi_sw_tcp_session_destroy+0xd8/0x130 [iscsi_tcp]
[  276.972143]  iscsi_if_recv_msg+0x1bf1/0x2660 [scsi_transport_iscsi]
[  276.972485]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
[  276.972808]  netlink_unicast+0x4d5/0x7b0
[  276.973201]  netlink_sendmsg+0x78d/0xc30
[  276.973544]  sock_sendmsg+0xe5/0x120
[  276.973864]  ____sys_sendmsg+0x5fe/0x860
[  276.974248]  ___sys_sendmsg+0xe0/0x170
[  276.974583]  __sys_sendmsg+0xc8/0x170
[  276.974891]  do_syscall_64+0x38/0x90
[  276.975216]  entry_SYSCALL_64_after_hwframe+0x63/0xcd

We can easily reproduce by two tasks:
1. while :; do iscsiadm -m node --login; iscsiadm -m node --logout; done
2. while :; do cat \
/sys/devices/platform/host*/iscsi_host/host*/ipaddress; done

            iscsid              |        cat
--------------------------------+---------------------------------------
|- iscsi_sw_tcp_session_destroy |
  |- iscsi_session_teardown     |
    |- device_release           |
      |- iscsi_session_release  ||- dev_attr_show
        |- kfree                |  |- show_host_param_
                                |             ISCSI_HOST_PARAM_IPADDRESS
                                |    |- iscsi_sw_tcp_host_get_param
                                |      |- r/w tcp_sw_host->session (UAF)
  |- iscsi_host_remove          |
  |- iscsi_host_free            |

Fix the above bug by splitting the session removal into 2 parts:

 1. removal from iSCSI class which includes sysfs and removal from host
    tracking.

 2. freeing of session.

During iscsi_tcp host and session removal we can remove the session from
sysfs then remove the host from sysfs. At this point we know userspace is
not accessing the kernel via sysfs so we can free the session and host.

Link: https://lore.kernel.org/r/20230117193937.21244-2-michael.christie@oracle.com
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Acked-by: Ding Hui <dinghui@sangfor.com.cn>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 11 +++++++++--
 drivers/scsi/libiscsi.c  | 38 +++++++++++++++++++++++++++++++-------
 include/scsi/libiscsi.h  |  2 ++
 3 files changed, 42 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 4d2f33087806..5c19e75c0e2f 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -982,10 +982,17 @@ static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
 	if (WARN_ON_ONCE(session->leadconn))
 		return;
 
+	iscsi_session_remove(cls_session);
+	/*
+	 * Our get_host_param needs to access the session, so remove the
+	 * host from sysfs before freeing the session to make sure userspace
+	 * is no longer accessing the callout.
+	 */
+	iscsi_host_remove(shost, false);
+
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
-	iscsi_session_teardown(cls_session);
 
-	iscsi_host_remove(shost, false);
+	iscsi_session_free(cls_session);
 	iscsi_host_free(shost);
 }
 
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 73d235540b98..d422e8fd7137 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3024,17 +3024,32 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
 }
 EXPORT_SYMBOL_GPL(iscsi_session_setup);
 
-/**
- * iscsi_session_teardown - destroy session, host, and cls_session
- * @cls_session: iscsi session
+/*
+ * issi_session_remove - Remove session from iSCSI class.
  */
-void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+void iscsi_session_remove(struct iscsi_cls_session *cls_session)
 {
 	struct iscsi_session *session = cls_session->dd_data;
-	struct module *owner = cls_session->transport->owner;
 	struct Scsi_Host *shost = session->host;
 
 	iscsi_remove_session(cls_session);
+	/*
+	 * host removal only has to wait for its children to be removed from
+	 * sysfs, and iscsi_tcp needs to do iscsi_host_remove before freeing
+	 * the session, so drop the session count here.
+	 */
+	iscsi_host_dec_session_cnt(shost);
+}
+EXPORT_SYMBOL_GPL(iscsi_session_remove);
+
+/**
+ * iscsi_session_free - Free iscsi session and it's resources
+ * @cls_session: iscsi session
+ */
+void iscsi_session_free(struct iscsi_cls_session *cls_session)
+{
+	struct iscsi_session *session = cls_session->dd_data;
+	struct module *owner = cls_session->transport->owner;
 
 	iscsi_pool_free(&session->cmdpool);
 	kfree(session->password);
@@ -3052,10 +3067,19 @@ void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
 	kfree(session->discovery_parent_type);
 
 	iscsi_free_session(cls_session);
-
-	iscsi_host_dec_session_cnt(shost);
 	module_put(owner);
 }
+EXPORT_SYMBOL_GPL(iscsi_session_free);
+
+/**
+ * iscsi_session_teardown - destroy session and cls_session
+ * @cls_session: iscsi session
+ */
+void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+{
+	iscsi_session_remove(cls_session);
+	iscsi_session_free(cls_session);
+}
 EXPORT_SYMBOL_GPL(iscsi_session_teardown);
 
 /**
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index 5cf84228b51d..c7ee5279e7fc 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -414,6 +414,8 @@ extern int iscsi_host_get_max_scsi_cmds(struct Scsi_Host *shost,
 extern struct iscsi_cls_session *
 iscsi_session_setup(struct iscsi_transport *, struct Scsi_Host *shost,
 		    uint16_t, int, int, uint32_t, unsigned int);
+void iscsi_session_remove(struct iscsi_cls_session *cls_session);
+void iscsi_session_free(struct iscsi_cls_session *cls_session);
 extern void iscsi_session_teardown(struct iscsi_cls_session *);
 extern void iscsi_session_recovery_timedout(struct iscsi_cls_session *);
 extern int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
-- 
2.39.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131150030.1250104-5-sashal%40kernel.org.
