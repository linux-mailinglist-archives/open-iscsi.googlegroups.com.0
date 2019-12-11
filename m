Return-Path: <open-iscsi+bncBDTZTRGMXIFBBVEZYTXQKGQEYYU5VGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A47C211B24D
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:35:49 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id k4sf10678624vkh.16
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:35:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576078548; cv=pass;
        d=google.com; s=arc-20160816;
        b=etV/6vR1CLOdlfiflnCtzTmlkKhxW/jA3MM9/O2iOQr5GtRrHhOvJGTPG33ewhGW4M
         g/Gqf7GFxOOvWhYaC9LQXROOqWtPst8ftKOdjYd8c6zJpgbI2o7eMantMbVs/q1rY41o
         oZrs5RtyQ2+PUWzewrETvlzAtkA2/gjXmd+hgeTaaqBYcZkYFGEWtg7zHwML8SHu6zio
         DiiGyvYUy7LUKw34OMOyMfvZBJ5poTgD2Ubl2vIYTl7m6jO+QCHIvH9uVVWn0gasBPol
         8nndR87eJ2vQsGqAJQ6Kw4jESC9FgPNOEJ3qOUCdIyry/wzb733BZH+JhMSlpm6ywNke
         eMkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=3otCa2rLLfRs00gbJ+E/phG9Q49XWyja3msPPH/qlfw=;
        b=LctqthgF0kKsGZYIeUl6PCLjzKwzt4NrnaGPp0vL06NYiLPtOJjs1/Rrk0Kqre7nWN
         VH59zjpnxEzz/KvLiArlyH5cNu7YjcaM0H45ZM7yu8WsUtbKSbRzzXBG6BfA/JhB5qjW
         cjgN4pfYNjb2Fifxq03zHwJTPrvCDH6X6/uCimi5FsoykiKYBHENKRqHqBrcdk1EPBq4
         Qsm3qwAwW/6aQbp8vTu9lYQNwi1/48tJKVu28X+AGuULGPPHE3K+sWHEd2VLBVQbd1xW
         3W2Y4625Fh+SHp7jkniOHTFLaExziA5BWR/fAzRqJ1f3oAX8PdqK7oOZ9lRD7BeMyaeX
         biwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ui0ro33S;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3otCa2rLLfRs00gbJ+E/phG9Q49XWyja3msPPH/qlfw=;
        b=YdHg4ZxpLEWDR757q/KdEnE0cxDnwm6vLpRZJNOsXhj2JmNC76smIJoGe4AZWPWFOC
         LtXEPPY0aQBA5Fr4Umi4ieVvNkFnO8e0UAx5FVz/foKJXUGBwy08vf9Zcultvn1QVJBl
         lHnYa++L51anmDjc1kcjNBA22GqC1HQccybQLgNX3k9fGzs4sa2uB4/ICX3B67gK+/as
         5Amkjl4p2NV4sh3csS19UBJW3wdWy7OIg7yLUZeiHSg6sFl0BO2VwUMKz3HLTHmrYzQ+
         9B1OfHUS5a8ns0LRssZuT4aEHUCHx86NqdRArOZQOtpKKvTGSRxFAidJpfRpwBxFgA5/
         ZOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3otCa2rLLfRs00gbJ+E/phG9Q49XWyja3msPPH/qlfw=;
        b=PSgVuVOKKtandQyVdYZ3K0vxWK3fcHp6/cwtf2xMSCoWdvDd6LuMGiMJh9cimRM9P4
         jIHWyw6dc+DsfSwD/WR5rXfjpSnmq3gzEBNa3mvfMyBz3jQRDQNae+og+aYLuNazR3om
         0mH/sGJvRkvuVmou2k3YgaPyp5SYHStYFq+i0ZKwWlOg6ztyeoyz6PSabcdnxjgBYZy7
         vSy4/QktVK5jCQ4CL/oO3//3LP3aQydBaH5RyV8N4zBL3Gtpl2Ta8SX+6XYvoGSlkDUm
         qgWNgWiKgXLVfvvKV62Xuu7fugRMuUGsXzFLoG1TT4WiSixrd8gIPxHL5UzPkSe+T3sf
         5lwQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXN5JVR0SHzpkPGOzt997Pe9Kw4KgcHmgufp1/nWkloG6rhV1ud
	evF/0T+E04HAWpzcEXbHUX4=
X-Google-Smtp-Source: APXvYqxr5ZNF5qY7qzGbGbQ/8b1i3nkao9fRWfOBw1hAt3EgpxM7Cx00mTfd9Vm23jCcrUyR/QO1aA==
X-Received: by 2002:a67:f50c:: with SMTP id u12mr3110928vsn.24.1576078548694;
        Wed, 11 Dec 2019 07:35:48 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:c20c:: with SMTP id i12ls297600vsj.14.gmail; Wed, 11 Dec
 2019 07:35:48 -0800 (PST)
X-Received: by 2002:a67:f8d1:: with SMTP id c17mr3059003vsp.62.1576078548277;
        Wed, 11 Dec 2019 07:35:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576078548; cv=none;
        d=google.com; s=arc-20160816;
        b=SKW9rvU089aA4SVoqAPdB8oAtHdD4d2Yo7yJucdP4Q3wyLgsEJpoZnIprAfe1tbBBn
         m38saDwk/hyGg1pKpE9pJA96MAO6T8halffqLuxaxd7ILiejGd7+v6sjD1/0qj9q4zQS
         tPxsj0aList9hyFPBgD8YtkQH5Q0Wl3LtC/pWelhxF6v4vR6azpo51BD1Knq6LLUljyZ
         TBPKX/6A7gHLroBg11+ae+SLn+OKtyFUjQd3nfb2MDkotZI3/7L2ySBbPv7DfszCcmZD
         09YpDRtLUNj+gxBP6gQDCDnj6o5CDIRymYlkWHvmupz4KEWwLdFhZdCd2v4I1tbQ8+5U
         AFQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9gPvk+joQQ2x7q1JshkEzdix83o8iRXGN3BRM4w4jL0=;
        b=b9hKHvgSuJvx/6gniT/g3dDpfVrCnP4qcPhH5zj3LAM90SeGiCIb6n6mfkrH4HKZDY
         3V0jk4lNrjWDNxpLEkWtzDncY6nFvPsP15xQ/0wB4NoM9InHAEfoiAUsb7CxmsKzmWxf
         rbJUa8By4v3qgvZL1oBf+a8UgIA/zuaRAWV00quuathgR4Dzo6VTk2bdPsN1ofM2CxwL
         F1F2gCZUTsOg4Rj/bwy5ay+Shez8EuyIceN6g9OS14PFNeQKVPHElzdSylAVf8TkbMt1
         6SaBes6kiontPHQSEhsttXbEvPnKuM3F9jEylVLPlb9N7ToZnXNKz/SJGs41PWTPWPn9
         YeuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ui0ro33S;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c124si111137vkb.2.2019.12.11.07.35.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:35:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 32C342173E;
	Wed, 11 Dec 2019 15:35:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>,
	Mike Christie <mchristi@redhat.com>,
	Roman Bolshakov <r.bolshakov@yadro.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	target-devel@vger.kernel.org,
	open-iscsi@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 34/42] scsi: target: iscsi: Wait for all commands to finish before freeing a session
Date: Wed, 11 Dec 2019 10:35:02 -0500
Message-Id: <20191211153510.23861-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211153510.23861-1-sashal@kernel.org>
References: <20191211153510.23861-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ui0ro33S;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
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

From: Bart Van Assche <bvanassche@acm.org>

[ Upstream commit e9d3009cb936bd0faf0719f68d98ad8afb1e613b ]

The iSCSI target driver is the only target driver that does not wait for
ongoing commands to finish before freeing a session. Make the iSCSI target
driver wait for ongoing commands to finish before freeing a session. This
patch fixes the following KASAN complaint:

BUG: KASAN: use-after-free in __lock_acquire+0xb1a/0x2710
Read of size 8 at addr ffff8881154eca70 by task kworker/0:2/247

CPU: 0 PID: 247 Comm: kworker/0:2 Not tainted 5.4.0-rc1-dbg+ #6
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
Workqueue: target_completion target_complete_ok_work [target_core_mod]
Call Trace:
 dump_stack+0x8a/0xd6
 print_address_description.constprop.0+0x40/0x60
 __kasan_report.cold+0x1b/0x33
 kasan_report+0x16/0x20
 __asan_load8+0x58/0x90
 __lock_acquire+0xb1a/0x2710
 lock_acquire+0xd3/0x200
 _raw_spin_lock_irqsave+0x43/0x60
 target_release_cmd_kref+0x162/0x7f0 [target_core_mod]
 target_put_sess_cmd+0x2e/0x40 [target_core_mod]
 lio_check_stop_free+0x12/0x20 [iscsi_target_mod]
 transport_cmd_check_stop_to_fabric+0xd8/0xe0 [target_core_mod]
 target_complete_ok_work+0x1b0/0x790 [target_core_mod]
 process_one_work+0x549/0xa40
 worker_thread+0x7a/0x5d0
 kthread+0x1bc/0x210
 ret_from_fork+0x24/0x30

Allocated by task 889:
 save_stack+0x23/0x90
 __kasan_kmalloc.constprop.0+0xcf/0xe0
 kasan_slab_alloc+0x12/0x20
 kmem_cache_alloc+0xf6/0x360
 transport_alloc_session+0x29/0x80 [target_core_mod]
 iscsi_target_login_thread+0xcd6/0x18f0 [iscsi_target_mod]
 kthread+0x1bc/0x210
 ret_from_fork+0x24/0x30

Freed by task 1025:
 save_stack+0x23/0x90
 __kasan_slab_free+0x13a/0x190
 kasan_slab_free+0x12/0x20
 kmem_cache_free+0x146/0x400
 transport_free_session+0x179/0x2f0 [target_core_mod]
 transport_deregister_session+0x130/0x180 [target_core_mod]
 iscsit_close_session+0x12c/0x350 [iscsi_target_mod]
 iscsit_logout_post_handler+0x136/0x380 [iscsi_target_mod]
 iscsit_response_queue+0x8de/0xbe0 [iscsi_target_mod]
 iscsi_target_tx_thread+0x27f/0x370 [iscsi_target_mod]
 kthread+0x1bc/0x210
 ret_from_fork+0x24/0x30

The buggy address belongs to the object at ffff8881154ec9c0
 which belongs to the cache se_sess_cache of size 352
The buggy address is located 176 bytes inside of
 352-byte region [ffff8881154ec9c0, ffff8881154ecb20)
The buggy address belongs to the page:
page:ffffea0004553b00 refcount:1 mapcount:0 mapping:ffff888101755400 index:0x0 compound_mapcount: 0
flags: 0x2fff000000010200(slab|head)
raw: 2fff000000010200 dead000000000100 dead000000000122 ffff888101755400
raw: 0000000000000000 0000000080130013 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff8881154ec900: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff8881154ec980: fc fc fc fc fc fc fc fc fb fb fb fb fb fb fb fb
>ffff8881154eca00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                                             ^
 ffff8881154eca80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8881154ecb00: fb fb fb fb fc fc fc fc fc fc fc fc fc fc fc fc

Cc: Mike Christie <mchristi@redhat.com>
Link: https://lore.kernel.org/r/20191113220508.198257-3-bvanassche@acm.org
Reviewed-by: Roman Bolshakov <r.bolshakov@yadro.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/target/iscsi/iscsi_target.c | 10 ++++++++--
 include/scsi/iscsi_proto.h          |  1 +
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/target/iscsi/iscsi_target.c b/drivers/target/iscsi/iscsi_target.c
index b6c4f55f79e7a..e5674e5857bf8 100644
--- a/drivers/target/iscsi/iscsi_target.c
+++ b/drivers/target/iscsi/iscsi_target.c
@@ -1168,7 +1168,9 @@ int iscsit_setup_scsi_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 		hdr->cmdsn, be32_to_cpu(hdr->data_length), payload_length,
 		conn->cid);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	cmd->sense_reason = transport_lookup_cmd_lun(&cmd->se_cmd,
 						     scsilun_to_int(&hdr->lun));
@@ -1986,7 +1988,9 @@ iscsit_handle_task_mgt_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 			      conn->sess->se_sess, 0, DMA_NONE,
 			      TCM_SIMPLE_TAG, cmd->sense_buffer + 2);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	/*
 	 * TASK_REASSIGN for ERL=2 / connection stays inside of
@@ -4243,6 +4247,8 @@ int iscsit_close_connection(
 	 * must wait until they have completed.
 	 */
 	iscsit_check_conn_usage_count(conn);
+	target_sess_cmd_list_set_waiting(sess->se_sess);
+	target_wait_for_sess_cmds(sess->se_sess);
 
 	ahash_request_free(conn->conn_tx_hash);
 	if (conn->conn_rx_hash) {
diff --git a/include/scsi/iscsi_proto.h b/include/scsi/iscsi_proto.h
index c1260d80ef30d..1a2ae0862e23a 100644
--- a/include/scsi/iscsi_proto.h
+++ b/include/scsi/iscsi_proto.h
@@ -638,6 +638,7 @@ struct iscsi_reject {
 #define ISCSI_REASON_BOOKMARK_INVALID	9
 #define ISCSI_REASON_BOOKMARK_NO_RESOURCES	10
 #define ISCSI_REASON_NEGOTIATION_RESET	11
+#define ISCSI_REASON_WAITING_FOR_LOGOUT	12
 
 /* Max. number of Key=Value pairs in a text message */
 #define MAX_KEY_VALUE_PAIRS	8192
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211153510.23861-34-sashal%40kernel.org.
