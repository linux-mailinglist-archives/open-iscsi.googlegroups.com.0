Return-Path: <open-iscsi+bncBDO7B5X3UIBBBDVW6T6AKGQET3JMWLQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC7D2A141C
	for <lists+open-iscsi@lfdr.de>; Sat, 31 Oct 2020 09:06:40 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id c2sf2547051ooo.20
        for <lists+open-iscsi@lfdr.de>; Sat, 31 Oct 2020 01:06:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604131599; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NaDQy5AKA+iS2/ks0BzuO1KbyxHBU+7lenBt2pLrEcgdRbSiVZn8/sLLyjBALB23U
         oh9nOMCtdcbGVXH8McLdtC41cxRQTXX4xYL9LFOFdh8AkhUEPnCZtwHMrICg7Pg2x7D/
         GAMsgyY+MZsSdmBUoQ6dlzbY+z1StYDMggDr/KcdX2qI2mxrOfaNRtFW+wN1JoaBdT/O
         9W0WWPUKS/OwDtAwi1Ek0RDaG5kWU/QZwejUYHC0KwIa61hsxSvnfknocDIf42EuXobq
         wl/RNL+7zguvHOCr9cndAxzdLvAfIsfyx0nwGNxsKwDGcUEX0XJpfiviaCSi10AXnyqs
         54Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=jkKURJJbCJ+KD446mBWjm0LSaioC+Yvy2gSnkd8zees=;
        b=AuFoTV97GHa/cJbORTkvO1A71MDF9GvsbryxLHIBdFN6o+QUrLlvFJ95byyyNIzjp5
         spGrYipiGIIKdgPiND8Vhqu54G4in6Bsz39OjkqlG/j+hLYvR4ZJt8PvxCCHDWaWUtag
         MKA5w+j44UBnKn7TcluKgsloY5Tm9qScN/HUCpJzxQF3c+NLLWo82N5HReRqfXqXVgy2
         fys7KiKbj+twJqNGTO8LsdTskiMEackMxuLhg9/5zZFmnBDFXC9qYcNk2S6wDfJHo4OF
         VTmJJtteNtXrmWWmvT7FtNdNul7gj8FwqFh628DY7UTDdcaS83KQGo3b0WTNyujeabWa
         M0cQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkKURJJbCJ+KD446mBWjm0LSaioC+Yvy2gSnkd8zees=;
        b=jfddU/oaUsh6go42/hcdCiYiWHsxE/CiPMyQq7y13S9JdzXAGQZTca3QvXCy9KX9oc
         BCcr8QoN6zhW+7l6bhW30JiakIbLXn4qLAbKClx/iSGjj/owLxHbSza+QccQyuwIfaia
         SF1qXYNkIUgpz3Otqvw1wQHwpw7RbUWGkR3KWZtiqPQrKmptKQ1MwvpgDIyDebLZDAon
         b6SHlrlZ86y0/hTcsqgItgZ/XuM6VkDprsg8VYqFSODL14HTBlrUkA5xJPy2HAu5cnGf
         CVziUGMrjQ6Hm2PmSaOK51m8hJTDybJkqmbcey6dhz1iRH9jPvSutanmziMr6UpjYGL4
         MbUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jkKURJJbCJ+KD446mBWjm0LSaioC+Yvy2gSnkd8zees=;
        b=nqIs6hJa7lhZvUoL2l9NPmnEIORZlPeP7JRQiYdx+RrGdHiCvo4HxXjQ8EsWVuWUwi
         r4zuS9qZ4XpGLXh79W1R85bNJWVh2HpQpHMjcc2Hua6OOtlMLqukWpuUs5vPcJ1H6h2G
         ZGbaelqymFnUvAH/IatDkpC3KUCiQEdiND2ugQs3o67mpVaCxUJqyMhzZ+65iz35Gp0m
         EUm6/NvX0oaVAkd0jApUfXAA9nQAlfchPcEJLE6/vlExZWpivuuLaJaPCma1sB5EkqcX
         HDPYZRTXSu4mWUFfAhLf1jOl3mTSQ09H4j9wM+0NZI3LTT84Xva7MTYdn0u80lkJ5AKh
         E6OA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530xg1Rv7zfutJ/Y/v5aB66kzT2ii/4BvH+EhqJLL4ntP6BBGmf5
	HVjBj+ng0+q1eeA/4d88pT4=
X-Google-Smtp-Source: ABdhPJzucciEnp0mMwPteloVA7HfBzwK+omNGeUdjRoe/N8un6APlHvlrwuvMfXUwIp1U08aqQuyzg==
X-Received: by 2002:a05:6830:17d5:: with SMTP id p21mr2153692ota.8.1604131598747;
        Sat, 31 Oct 2020 01:06:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:1a04:: with SMTP id a4ls2146757oia.6.gmail; Sat, 31 Oct
 2020 01:06:38 -0700 (PDT)
X-Received: by 2002:aca:ec91:: with SMTP id k139mr4223289oih.88.1604131598228;
        Sat, 31 Oct 2020 01:06:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604131598; cv=none;
        d=google.com; s=arc-20160816;
        b=VHDP56KzRpAbrS0WdUSfrTPTFglpIO3YexMJQO8HPudHG1ux7XSQ6VPOT+zN1rX5mz
         xbcaN+faA3o2dmAndOthzSn7KRQFCAdlNw2SHC4l14JnDg5flZlKRR25QWZ56lQD2BoS
         J9mPkC/5RhHKdVRDpqClXHZd/NwwWCPyhLTyX84275GG5T4Yv/PAgMC84WOYgpQlftmI
         n7ygdRN9QMKw1k3fi8Yd4jo9wWyH9hW6eiVrJhHGs0mwHLjHCZ6ttwxq9BPwpZO0Xl7/
         dQ+soPGw/Ujw/R0LcJuRDQf7keFr5RN8K0fFOSleXXk99/xl82RKDeLV8GUF2mTaraZt
         Aw7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=ZI5V/Lgnjh+XKR06QuWr6YW14HwfMnAWqmlRKRs26CA=;
        b=YrAGxV2OOswgWNTujfExDKTaeXNeUaKG0Gw4yGvLoX2KwO9s2NtNwLhfpxHrEINP4i
         2eLkAfulDCc2aKDQIbRu3T6OhtRkUg72f0umt5/v3k423cTrNOQNdgKl9OReY/wWA7BE
         Shx+okVS1GEuMbD2LzDpc7l6sgktuExvYylRiLCOKDLligX/dSk/9e8TcCeF/6LfO/EW
         eh9J7wlxtgFb1UMjnCTMZ7xyDBZyKuZEUSq9gTC74OaB4cpnzDtNocIoZ5HGEEnAUUM+
         zyhCXMVdM/fAwvw5kELb+r/S3fHfh9gjjSIzT5CqhmBwRAhLXaat+WypIQu8DtM6S4cA
         RxnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id n185si567974oih.3.2020.10.31.01.06.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 01:06:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4CNWvt5xTKzhdGg;
	Sat, 31 Oct 2020 16:06:02 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Sat, 31 Oct 2020
 16:05:52 +0800
From: Wu Bo <wubo40@huawei.com>
To: <linux-scsi@vger.kernel.org>, <open-iscsi@googlegroups.com>
CC: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<lutianxiong@huawei.com>, <linfeilong@huawei.com>,
	<liuzhiqiang26@huawei.com>, <wubo40@huawei.com>
Subject: [PATCH] scsi: libiscsi: Fix cmds hung when sd_shutdown
Date: Sat, 31 Oct 2020 16:23:42 +0800
Message-ID: <1604132622-497115-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

For some reason, during reboot the system, iscsi.service failed to
logout all sessions. kernel will hang forever on its
sd_sync_cache() logic, after issuing the SYNCHRONIZE_CACHE cmd to all
still existent paths.

[ 1044.098991] reboot: Mddev shutdown finished.
[ 1044.099311] reboot: Usermodehelper disable finished.
[ 1050.611244]  connection2:0: ping timeout of 5 secs expired, recv timeout 5, last rx 4295152378, last ping 4295153633, now 4295154944
[ 1348.599676] Call trace:
[ 1348.599887]  __switch_to+0xe8/0x150
[ 1348.600113]  __schedule+0x33c/0xa08
[ 1348.600372]  schedule+0x2c/0x88
[ 1348.600567]  schedule_timeout+0x184/0x3a8
[ 1348.600820]  io_schedule_timeout+0x28/0x48
[ 1348.601089]  wait_for_common_io.constprop.2+0x168/0x258
[ 1348.601425]  wait_for_completion_io_timeout+0x28/0x38
[ 1348.601762]  blk_execute_rq+0x98/0xd8
[ 1348.602006]  __scsi_execute+0xe0/0x1e8
[ 1348.602262]  sd_sync_cache+0xd0/0x220 [sd_mod]
[ 1348.602551]  sd_shutdown+0x6c/0xf8 [sd_mod]
[ 1348.602826]  device_shutdown+0x13c/0x250
[ 1348.603078]  kernel_restart_prepare+0x5c/0x68
[ 1348.603400]  kernel_restart+0x20/0x98
[ 1348.603683]  __se_sys_reboot+0x214/0x260
[ 1348.603987]  __arm64_sys_reboot+0x24/0x30
[ 1348.604300]  el0_svc_common+0x80/0x1b8
[ 1348.604590]  el0_svc_handler+0x78/0xe0
[ 1348.604877]  el0_svc+0x10/0x260

d754941225 (scsi: libiscsi: Allow sd_shutdown on bad transport) Once
solved this problem. The iscsi_eh_cmd_timed_out() function add system_state
judgment, and will return BLK_EH_DONE and mark the result as 
DID_NO_CONNECT when system_state is not SYSTEM_RUNNING, 
To tell upper layers that the command was handled during 
the transport layer error handler helper.

The scsi Mid Layer timeout handler function(scsi_times_out) will be
abort the cmd if the scsi LLD timeout handler return BLK_EH_DONE.
if abort cmd failed, will enter scsi EH logic.

Scsi EH will do reset target logic, if reset target failed, Will
call iscsi_eh_session_reset() function to drop the session.

The iscsi_eh_session_reset function will wait for a relogin,
session termination from userspace, or a recovery/replacement timeout.
But at this time, the app iscsid has exited, and the session was marked as
ISCSI_STATE_FAILED, So the SCSI EH process will never be 
scheduled back again.

PID: 9123   TASK: ffff80020c1b4d80  CPU: 3   COMMAND: "scsi_eh_2"
 #0 [ffff00008632bb70] __switch_to at ffff000080088738
 #1 [ffff00008632bb90] __schedule at ffff000080a00480
 #2 [ffff00008632bc20] schedule at ffff000080a00b58
 #3 [ffff00008632bc30] iscsi_eh_session_reset at ffff000000d1ab9c [libiscsi]
 #4 [ffff00008632bcb0] iscsi_eh_recover_target at ffff000000d1d1fc [libiscsi]
 #5 [ffff00008632bd00] scsi_try_target_reset at ffff0000806f0bac
 #6 [ffff00008632bd30] scsi_eh_ready_devs at ffff0000806f2724
 #7 [ffff00008632bde0] scsi_error_handler at ffff0000806f41d4
 #8 [ffff00008632be70] kthread at ffff000080119ae0

Reported-by: Tianxiong Lu <lutianxiong@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 1e9c317..2570768 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2380,7 +2380,17 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
 
 	mutex_lock(&session->eh_mutex);
 	spin_lock_bh(&session->frwd_lock);
-	if (session->state == ISCSI_STATE_TERMINATE) {
+
+	/*
+	 * During shutdown, if session is prematurely disconnected
+	 * recovery won't happen and there will be hung cmds.
+	 * To solve this case, all cmds would be enter scsi EH.
+	 * But the EH path will wait for wait_event_interruptible() completed,
+	 * when the session state machine is not ISCSI_STATE_TERMINATE,
+	 * ISCSI_STATE_LOGGED_IN and ISCSI_STATE_RECOVERY_FAILED.
+	 */
+	if (session->state == ISCSI_STATE_TERMINATE ||
+		unlikely(system_state != SYSTEM_RUNNING)) {
 failed:
 		ISCSI_DBG_EH(session,
 			     "failing session reset: Could not log back into "
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1604132622-497115-1-git-send-email-wubo40%40huawei.com.
