Return-Path: <open-iscsi+bncBDTZTRGMXIFBB6EVYTXQKGQEXN5CG4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4B311B100
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:27:54 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id 63sf16704122ybz.11
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:27:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576078073; cv=pass;
        d=google.com; s=arc-20160816;
        b=bqM/PAcrf8UEy6LBY2qo5swVGZey1MpBu2c9X7Dq6rI2hVZIFAa2S9fohyQhaOMcpp
         gw1r11K0Zl+0zd3YY/qoOz9pQQucK5ZJ+VyzXgjfNJMfZWt+tCFswUOvWjh6YG5cmQTd
         dnXpOtXLidRLAQAOfV8RJikLhyRxc1mnDsl0tI+p5Au29vW5OamYZHx6cqkEHGTd2Tg0
         j9JRPzTKi6unWAHyBjkT1wymk73gIX1Fbw+fL3fkOOXn5fAJvTIICJRlnO1QqG1Cc1/0
         uNK6mkeOD50jstszpvhyqegqUs1ikJig1VH/qgH24/fAgwJoX7fhCVbdxEZjrVXgkb/e
         ANqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=webPlki6ph68MT3HWmE6V5mRQL57O80Gn26XNAGxEBw=;
        b=eGiObCgRK2gUcHNOKed9rgfQH2nlmChUTaWf78ufQ1zVfIug/98WEzE6Y1mtx54MXR
         ioVn7O46iPXKcpdpJviMgrPYY4DX6zPw/hpsCJWbrGj/rhre7YBNb82t/fGoF/o56U7T
         MwOSbXC58sGfMbRDFKmGROY2Ph5eZTtVTomeL4Kk8Yb3UNRRUI+Qgh2tWLxg+1w3xCfi
         ONeGi3Qf2Pq1bQxgBQE0azJkFft2bJjkElEscPt6FOLkL2gfEwXmJ0noMpgFBI5xSONe
         PSpl9Yzr8YEbe8L3PmxfBHQkgBDrwy1eU8rpWEc01BbJy3NF5gggjNjRQ/fsFBVxs0Gv
         qVnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jy9IJGAw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=webPlki6ph68MT3HWmE6V5mRQL57O80Gn26XNAGxEBw=;
        b=DWybtHyMvYgscRa7ltP8OAixOdip2920j8jB6PexkpzFh9fE/fi8cyWhvwUWMYxjEe
         8G0mdinuQL/nWLvIZqIBxbbk0gLaauFXrZjnM3m8xBd0WkwTn8CQ52qJ+JxJbAZDu9KW
         2IHfn2qbScm6Gem+PBKHUx5GJ/w074BUatNfDWQ4dPDC1ubjj+KKVXB789+hk/aBorbx
         Harmhp5646/prC1ir7KEGDmjOhGCJ5xl+GTiFwtR/sKCtHY59zavgvEifcqVLMBtcJ0U
         fAE2NYOeX5MbE8KTC2LreomYb9tbnvN87zK+8VAT6s2Ln15Km7c4OMBvpx6KkZgmW/wX
         BsdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=webPlki6ph68MT3HWmE6V5mRQL57O80Gn26XNAGxEBw=;
        b=OHnDEhtSsgsKQc1Oaj2PoBkACLaM2KobO2Hr4+wuWv4aiiHStiGnhKi/3S/FHZ7K85
         oxIF2xI26Cetfr1nhB0IDbHI1BSzigHsMTBc82Kf2cY2DlZ5zLvhhpxbTBDoaZCLIuPV
         5kxo+qwZTG+EfLPlBHi/na8StKFFVf1WVYn9TizIpAh29nz4nNnsxniuE/ni9TPhS3ZT
         Cu38mlFX3xScNaEx8a62Bb5OWcOzVbD2EGBpRLY7+kBGlY5CX26Wb+rFczGDYwNF5d9O
         1Ck0POiLXQX6OCtd9Za23MWBjRdXA5nkJW+3sdb8pG2TfR5mE9y51aWB/bQr+r07ltCS
         BdjQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVTI6ky8/EAHZ2LDSX1d+OTfAr2xYFt4grJ4oFT90ge0jvvYDKg
	bWEzJOp8UDkHQI6b2NltIJQ=
X-Google-Smtp-Source: APXvYqzUo5P/bPfFLXjjqAQTDmuAqd1zn+Nr9jhXpv/KMfkmyxJLkWKrGxYN2ME0CkGXyXXa7g0xiw==
X-Received: by 2002:a25:d752:: with SMTP id o79mr325848ybg.340.1576078072870;
        Wed, 11 Dec 2019 07:27:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:6983:: with SMTP id e125ls343829ywc.16.gmail; Wed, 11
 Dec 2019 07:27:52 -0800 (PST)
X-Received: by 2002:a81:1054:: with SMTP id 81mr216610ywq.57.1576078072427;
        Wed, 11 Dec 2019 07:27:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576078072; cv=none;
        d=google.com; s=arc-20160816;
        b=0FMYa354Mnc33bG7dCP07Dob5auJjxI8RYDIGevFMESlB4bl8MzkFJztXH3RaOyDjU
         yc43N3FYiaYmAdVluZFvxZ26z1MKBD0CkghvSmvNJMkrgnRIgmtxPR90bZWhzfPcF/k+
         +55Y9lx8TGiOWtswK55alsmB9W6VWAtgmjsLcyhtxz8f8MKwqqe1QB/taTYZXa4l75QQ
         revpcX8UBjIn/xVG4ALlJsfpdSVFoNkrAjOJYuuJPUTZJo2YjVQL42WlKOM+XBDPudFg
         /hKouAP82Pmxarj7hDcLCfaxytILyFYj2WQFL9KLHrm28oqRRMU/1AitZkEXd5O/Vhlq
         7tOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=itGX5+Ig+d56jdDSaFX4GZyZ+gid1noSSxQ2pCsnOmY=;
        b=hLU3e+MxKCtb5ouu7WD4T5wQjoFlO272NUxHTz8uHqTphakcwAFHNafZ1T6QBb2CIP
         ggNP9M88kL5aIuTMI3+pv6hQrak026xn8+Bsf05thj3QdrUZri+aLyhKhDLdSB2arLoz
         DExgaCBgmO2+IXqks5WmkGJCruOe0ixZSVj2EfWh+laX6NZcP5MYoN3nTrhnvcK9Fhr+
         2PsRVriL8/gdwZ7neR5VI5jcYLM/oci1e2kF8ULMDE161Kb0I28UKUOPD1IkYYiQc9Ox
         Zv9DA51WoqWcFdgGMw6+KuK+dH+fIDxoiaQEkL2e8z5Uy4H/4Wpp7BXsQClsDJLC1oZB
         RX8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jy9IJGAw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j7si142261ywc.2.2019.12.11.07.27.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:27:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9ADEA2173E;
	Wed, 11 Dec 2019 15:27:50 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 62/79] scsi: target: iscsi: Wait for all commands to finish before freeing a session
Date: Wed, 11 Dec 2019 10:26:26 -0500
Message-Id: <20191211152643.23056-62-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211152643.23056-1-sashal@kernel.org>
References: <20191211152643.23056-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jy9IJGAw;       spf=pass
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
index 03e9cb156df94..317d0f3f7a14c 100644
--- a/drivers/target/iscsi/iscsi_target.c
+++ b/drivers/target/iscsi/iscsi_target.c
@@ -1157,7 +1157,9 @@ int iscsit_setup_scsi_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 		hdr->cmdsn, be32_to_cpu(hdr->data_length), payload_length,
 		conn->cid);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	cmd->sense_reason = transport_lookup_cmd_lun(&cmd->se_cmd,
 						     scsilun_to_int(&hdr->lun));
@@ -1998,7 +2000,9 @@ iscsit_handle_task_mgt_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 			      conn->sess->se_sess, 0, DMA_NONE,
 			      TCM_SIMPLE_TAG, cmd->sense_buffer + 2);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	/*
 	 * TASK_REASSIGN for ERL=2 / connection stays inside of
@@ -4204,6 +4208,8 @@ int iscsit_close_connection(
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211152643.23056-62-sashal%40kernel.org.
