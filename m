Return-Path: <open-iscsi+bncBDTZTRGMXIFBBUEWYTXQKGQEBHGPQPI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2E111B128
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:29:22 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 63sf16707531ybz.11
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:29:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576078161; cv=pass;
        d=google.com; s=arc-20160816;
        b=tFddYVRyjs5A2tIfwRWRXkUQdssFRwOXZzrOCKk4XOqRptuNFJdIIhnVFwxXDMmAqC
         tsXQcMW0/kq72Krc1MSRK5iwA7+b/Z5Q7qPtXeHoOOvEDKepLhoGAqSLZPXO53gN2DgG
         l+uuhEKdqcD/fPOypi4tiR/eo9ICVRV7v0R0EoYNw8OvZXJw/uTd+i4BiYc82Cd7K3YI
         LYiSNpZ2W1tS+9Z2pDCVw294R9CDu97Z4Ykmfpx2O3bfU4viPx8wrlLVxUPkjlrV7Iyc
         8dw+z0MMT3tGwZ3vZmJUB+d3091x7evgDFY2Pfi22dfDAX9HYIr2Cd0TCY5mOpdhCKCE
         3R9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=4y/DRcwvU3EyO0hs9h7Q0Yd1o3wnS9YOlbhssqeQnQo=;
        b=AF9QBMjnLzcd33t15A5eQCN868vsYNu5UeDrOCwtdgC8PXp+b4pLbPJNU/Y/vNUGzx
         mc+3dc5tcu6fPz3WILnMSlacKqy5rUYVsK579wDFYPaG37is+PyadUNDJdCjQfjrG7Kg
         CQleDD6DPFm61/GeZJs1TkGfsXdFLsVhRFJp3YCBGdhOgTUygjNARM9uJCROWC6kX+nD
         1rOkDg1Oa009fh5BzruribGc4A8DcPR5JBoiBZPlkltqGW87Y8rl/I8LhgD7Hz4a2UWD
         LhuowJ1KJKs8eh1nSjV9WaT0wtfnW+6UmoghDRMJ+oBSuquXJmOgg370MlVctxJjoWcb
         2IkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pPztGNDA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4y/DRcwvU3EyO0hs9h7Q0Yd1o3wnS9YOlbhssqeQnQo=;
        b=ijIT+mY4LCfcmymnfDx1wJ0bZtw2XmzCWYLsWTRsj/Xm92QMjOgb8AWetD7GOAElA7
         hU0WdwY3Swmoj+9HJI8/m8jGjrOVWiulmG8oHbaSoNatMAYHRXMGEk2XgsE8h7zbu7Be
         5D/P0sKfpCZFu/LeqJkcsbXDunhdrVL9q9giG43rgiTsY8naJsf3sYoSdkn7lwK3TGji
         er7H8q9hQUOwRV53+3iJtDYsjyFjCi4fRKRW5PTIFLGgGe4CIrB6xlMp9VCMHiIHS4nY
         BDvqg8rh6VIqN86EgNyZFJGlSq3ufvWoJsmcOBo3NuZSNcKsD2zsav1JgMJMQoK/C14C
         YhxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4y/DRcwvU3EyO0hs9h7Q0Yd1o3wnS9YOlbhssqeQnQo=;
        b=HKYFK3jtAojH7tiHsw6K+yGwysxClqIlsFT87o2gIPh+z200FsHP5oyblHAmfQ7+Pq
         wAqPD0t8HxV6xZfMRvfBHyZZuFaPV/XS/LiJgqLu9zh42Tgp7mbby1lJDp2FBvkD05H+
         +Xdc8hLontu64FXHKKHllhS/LaKEUWAeDuD1IGT/w5CzvgY6xGWIMOC4dDMutppc36AA
         /BENavC8f6cQKhdxnwe0ZRBB0ZZPney1vlSKjtlE+ul2twdMUugTofR5U0iTs8Tq72X9
         5mI8AahZtnMJraVXJA8TO+ZerPBMuRrMb9703P18OU3/4H/Iw7h9HMDMSZVY8rxEoSNI
         iN5Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVQsVy75MXyS2yNoCYhe1k5NjG8CO03mxNtvQb9D9I9+nfJ31jI
	UYRDVON2yddb4zEicXpYh/c=
X-Google-Smtp-Source: APXvYqwbATr+FjfgJf2Giw6nuov9aqvJdSa0LlMiAc6Y9IF4gWzvEoYhRkQTO3si4YvWim2sshUZwA==
X-Received: by 2002:a25:7557:: with SMTP id q84mr357419ybc.76.1576078161058;
        Wed, 11 Dec 2019 07:29:21 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:2397:: with SMTP id j145ls384694ybj.7.gmail; Wed, 11 Dec
 2019 07:29:20 -0800 (PST)
X-Received: by 2002:a5b:2ce:: with SMTP id h14mr284967ybp.457.1576078160704;
        Wed, 11 Dec 2019 07:29:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576078160; cv=none;
        d=google.com; s=arc-20160816;
        b=x3clq+zwnKHi9aa2tT39P2N8HG2C4+lJ8nzFGx3H9Z37JJc/HiTcfOHhupnHkdi9g7
         PxNnXa/YkHFbOYKoeQY4M8IWeUcEL2f/I+HhedjHUQtP+7Ej8y51vLt5i1EEnBnrjyxE
         851wzCULjvxmxtPDkBEgkuxgw/ZwrZUin7kGScTQvnLPvFSeCWQWoIvUR2cC88fwC2U3
         dCSBtSdi42eQBm6zrh5rTJsYH9flalzmS27KphQbAtK+WAvpRhOhSgK9GtWbPC5GF/ls
         YffD3L9T+0rlzMvwpUts/UAvnSVKsVUYfq92YboiEJuymGBP+mX/EMdaJaod6zsv6qA3
         Ok9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=StQGmGCnbdAaxMPtv0vnJ/5aRoWvPDnhqqMUZZgnYJg=;
        b=TSkUNAdKZeFgkfXZXq5i6hIuM8Z9Om8BRXTOqNlykDyLmV/TPhSVvK431VWnziy4Uy
         Yi5kMEqRc1RyLLWpLCORaayPP+65jz+ybrnPYTGSsAg9FmuU3jdhAb6yfwTH33H5nswl
         /0AQcwY7JJmf7UGdr6HYU1+uLRYOKHLq3kS4VYL3TR/Y1798nD64Yi0SQ1pOcPBvMbrC
         osCv/NSugsyUIClhZu1BJhGSguBugu3XG7w/qNROmK4aaO9ArhmSp/ZKZlbZHCMk9F0/
         7q0M/jK9oekxZ1q9/p2fXpJjBAzWc9IWNGqshBp7JyIQg6ATNsOj3kn3zmeZrwWRe8Ue
         w5cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pPztGNDA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k63si127976ywe.3.2019.12.11.07.29.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:29:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D203E24654;
	Wed, 11 Dec 2019 15:29:18 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 44/58] scsi: target: iscsi: Wait for all commands to finish before freeing a session
Date: Wed, 11 Dec 2019 10:28:17 -0500
Message-Id: <20191211152831.23507-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211152831.23507-1-sashal@kernel.org>
References: <20191211152831.23507-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pPztGNDA;       spf=pass
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
index fb7bd422e2e1f..21ce92ee16527 100644
--- a/drivers/target/iscsi/iscsi_target.c
+++ b/drivers/target/iscsi/iscsi_target.c
@@ -1158,7 +1158,9 @@ int iscsit_setup_scsi_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 		hdr->cmdsn, be32_to_cpu(hdr->data_length), payload_length,
 		conn->cid);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	cmd->sense_reason = transport_lookup_cmd_lun(&cmd->se_cmd,
 						     scsilun_to_int(&hdr->lun));
@@ -2004,7 +2006,9 @@ iscsit_handle_task_mgt_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 			      conn->sess->se_sess, 0, DMA_NONE,
 			      TCM_SIMPLE_TAG, cmd->sense_buffer + 2);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	/*
 	 * TASK_REASSIGN for ERL=2 / connection stays inside of
@@ -4236,6 +4240,8 @@ int iscsit_close_connection(
 	 * must wait until they have completed.
 	 */
 	iscsit_check_conn_usage_count(conn);
+	target_sess_cmd_list_set_waiting(sess->se_sess);
+	target_wait_for_sess_cmds(sess->se_sess);
 
 	ahash_request_free(conn->conn_tx_hash);
 	if (conn->conn_rx_hash) {
diff --git a/include/scsi/iscsi_proto.h b/include/scsi/iscsi_proto.h
index df156f1d50b2d..f0a01a54bd153 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211152831.23507-44-sashal%40kernel.org.
