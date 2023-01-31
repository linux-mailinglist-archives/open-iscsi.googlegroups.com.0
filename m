Return-Path: <open-iscsi+bncBDTZTRGMXIFBB56Z4SPAMGQELUMWQSA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA5D683014
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:00:10 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id l5-20020a1ced05000000b003db300f2e1csf6004693wmh.0
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:00:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177210; cv=pass;
        d=google.com; s=arc-20160816;
        b=FqE2UbsXRF7bpKLXnjUT2b5BgJix85NSSPGrxuHVgPXl8i9xiAuYvjgw/F8SPWdTUv
         6UBu1jUV8BxIp/xaavuKZRoBMYLMYl911ShRE8dSj9xrrpfbNPFUefPTdLbhopLD1W7p
         Pisi6uMpyKkiR+28P7hzRvrD8XrWq29KajpR6ZjWtiB9IoD1LidWjzTxtKb+N0Uiqd2/
         vhVqHz7pvJsiBHOFdMGymngTwgII23/l3GDzdJsKTK/owT3QRkVQ7PR8+p8cHYTOttiE
         GoElDq9XvZ27VROD0OBzcsarvcbU6bsSR3bil9HqEH20fc5KrSH71PEHp8CCOfb2aWaI
         lqgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=8tCC1bvCPIdN8YepOgJdHyHJQfXNCY8qEbUlae0Opb0=;
        b=NihhNB3BHP1j72HZ7yFuOGFznCo2UY+Y+7r+hUG6uTusVBQLx0iOoeCPNs86/+KBw8
         +7JM29K5RRlU1fMSNAvIqCgLNYeJNZVJ1fZQ6lRGoYnJJTOdFapptpJ6zmi0vgi9O2RY
         zHJdTJuCg1NSbag9vVy78sH3pnoeTp+VoPMV5rsKa/6ylZ79so2X7ds/AL0y/ElqcFeN
         VJkq6UbN4VoUotiCuij483B/lo5VHJCL4vknPpA/eAD7z9JgXaY/WRorxQaSiAEOxjYh
         inAKKCfJ3eqLvr/D5nug8FicnlJ1DLY0x2nIRUjCiwRFMX/p7vb/L/MFdfxpyezk9ipM
         dcag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=piQ7vIqW;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8tCC1bvCPIdN8YepOgJdHyHJQfXNCY8qEbUlae0Opb0=;
        b=MXfsw9f2dyNQPeFh6+0du2TNbF5G2QvlP2NKtZddGwtHmbaLhg0eRyqjnTSJnOsHVn
         MW/aYQ77KgYIHSre/rq3ejDYry7BgT9gq4Z6Je6T70ItR4ix2ywkfdZuqtoERRn0DSix
         vIYfxPQP0yyeu5iNucal7R68J1/vk++qItWkGAJcYStRbCqSXb878idRnVqudOjsQyXe
         +82Yl+aJI14a+tnTe45aIl/sQRxakbE5VH/WsVh/Mr73MnPBd20Dklvp/CQTiYeTj1Sy
         t05vjl2zpPuygmKi83Tx1iPrsIvYk99lR/hGb+/0CpTvuNFQ1+2pm9fEPZLjtxlSGXSP
         alVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8tCC1bvCPIdN8YepOgJdHyHJQfXNCY8qEbUlae0Opb0=;
        b=MRYLb2axHOnk0CGzlGkV+Gt3ja9j6rk6Gz2SS/fvKq1CeL22gbnXgi77fTBT4Qx/PS
         Nnt//mvk4G4nPEzacFiea4xoC1AifjaxLsHsK+d4GKOCpHkoRpgYhqblHc/uLg5gJXoU
         4eO6jZijbh/kCCa4PPQ9D62+NYr8nd+vgKzBU29ZBSzLknAQpbs1XQGktQwII5WunFg7
         4HeYB0eqNxZ9n9I4Zg4mV9p5fKR+7wtn2np95Lp5uTxWlE2e24racghNYpd/1JVPwFG2
         rCpwsi7aOCV7yZ0jJ7D/c7aiplxkvKnrgpAtFXFJJD07Vzp/zXs5vzo5Wh7OkB5Fc+1T
         IS5Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2kpgOcVSGrQmdwYZGVMjX/+TZJa3GedHu5L6v6glLUVCn9iUeHbp
	wadUbZEiKv0oXVGnP9vuJGc=
X-Google-Smtp-Source: AMrXdXvX1p2mW8hoyyxxTPHF19zVIv1EN4FZor4RP6SBDB49UJgc1wXbPlqAALUUrN/8TEcwzySS1A==
X-Received: by 2002:a7b:ce8f:0:b0:3d9:e033:e2ee with SMTP id q15-20020a7bce8f000000b003d9e033e2eemr3010251wmj.117.1675177209989;
        Tue, 31 Jan 2023 07:00:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3d06:b0:3cf:9be3:73dd with SMTP id
 bh6-20020a05600c3d0600b003cf9be373ddls4714577wmb.3.-pod-canary-gmail; Tue, 31
 Jan 2023 07:00:06 -0800 (PST)
X-Received: by 2002:a05:600c:34d1:b0:3db:1434:c51a with SMTP id d17-20020a05600c34d100b003db1434c51amr47911267wmq.40.1675177206660;
        Tue, 31 Jan 2023 07:00:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177206; cv=none;
        d=google.com; s=arc-20160816;
        b=wEUS4Vh7wzHgwYlhuIDWGK6zlnNpZJ+8M07NvPV4G1vlR+vi9ROsD1kbJ+9+vSmG+P
         K/2PyaOalZn5uCZDtAtolxtUv5O2fhNcO1s4nXusuUD9VVJPW8zEFqZRzft6KLZ6JqtW
         hO2LF8+s0pkwj5QkCD4Kfk5RXg6lMW4S96UN0aWhIRuH6NnDWEKNK2dOzMb6ZlJaKLaD
         EVf3bYRHDX+uC1bVzNo1Z0uXeM2tEQqWlBgr5/JaLYOxer4ux1agIAWs65yMuVDwkEgo
         lkfAd32AwVE8XBQawHveTzibwtDbxO8zqwt4BreH4PR0hukVIRHpyrFwT0xesGWLlVI6
         fUGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5qqv/piV2XVn4+IduzVU/8Un85rVCh+oHdAWlMYv2aE=;
        b=WmPVSY6Z5TbgJXPkMTXay15GB65LV24J6c7n7rW/rpcZHCCkEYXAWIl7oqrZhbvWlu
         L8tHlaJcMMfc6fku/0VntuP7eFgP19/TxJIiwFo/rlzl36VyK86piQwjuCnMVPeaDNiw
         CdcDGbGUALtD/zR9NIDD8fRAXAh5wq+XykSwQbHEdO2PiNdsiCSKFeGY0ADE+UJk9zdi
         qsX3ZrD5MfTJ0qh4x6oRIOk67pix/7Y3eBVQBhuZ4ee3Uvnn+cqnoWFCNbYxfExLJ3WF
         Le2I2NyA6wN0EI00FNhEvkbEf97Qhs8AHbjPhT3Fvk3pYHcqpB0UA2GW58jowFkCLUP5
         WtCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=piQ7vIqW;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id bg35-20020a05600c3ca300b003c4ecff4e2bsi1018157wmb.1.2023.01.31.07.00.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:00:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 534C8B81D4B;
	Tue, 31 Jan 2023 15:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65D2FC433A4;
	Tue, 31 Jan 2023 15:00:03 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 6.1 07/20] scsi: iscsi_tcp: Fix UAF during logout when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 09:59:33 -0500
Message-Id: <20230131145946.1249850-7-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131145946.1249850-1-sashal@kernel.org>
References: <20230131145946.1249850-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=piQ7vIqW;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
index 5fb1f364e815..9c0c8f34ef67 100644
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
index d95f4bcdeb2e..6e811d753cb1 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3104,17 +3104,32 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
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
@@ -3132,10 +3147,19 @@ void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
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
index 654cc3918c94..7fb3cb787df4 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -422,6 +422,8 @@ extern int iscsi_host_get_max_scsi_cmds(struct Scsi_Host *shost,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131145946.1249850-7-sashal%40kernel.org.
