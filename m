Return-Path: <open-iscsi+bncBDTZTRGMXIFBBI4PYTXQKGQEDGUTJCI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE9F11AF78
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:13:40 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id l1sf4526903qtp.21
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:13:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576077220; cv=pass;
        d=google.com; s=arc-20160816;
        b=HlKt0efB3whFCTHV8KzMnugKwTSsoDTQ6sV2eVUje0ORHCNRNjZc+kgPcJcxrM37sC
         +iLOx9wwioyfqgUgUT+0FgfC1Kl0CE2eKo1mGPIgZ0Dtrby9T42dzJ8OC45I59q5jVC/
         qrDtx5p25PfFQNj8Z7uEt33vjMf7KRB7D9l4gRhK7/hBD5e0HRFZOL3niM8ry8q4Dhvh
         I5rReAZun9Y0C4sGA74JDUmT8KCAZ2M1RLtnsvJY9/1Y0WF1U57Dwfwky1rZtFeKDsWw
         ijaXdt9ms0sgWCCCc8wgsJvS4HeEOYRUdSqXhBD0Uj2VWMVyDKuybtLp0yDAH52RfMVG
         ehxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=JY2+qxZb0F+7EXN9LezQCB22r6bXSMgSnADp4gkw6Gc=;
        b=ZzkNK0r5IUOYk6oSQXW5WBdk42Ee0oYVEx0TC42c0YhuuUADanHadnkE+c7YGeJGQ8
         /mxDVwnlWs9yzzwxGVwKZVUh9a2UCyi6paB92BZ9YmSXwScAiQ9MpRFrqGrtOMwLhoW6
         qdyxUAwiOAyj87aXV75Vi2qqWWTwdKpQm9R3eD1EruYrf3cYvj7Kzk6sQhnpvqdaT14o
         onWMupw0N3YSw2QIJuZEApiLWv/LSo+aOAdjlOjmrCb7PSaD3/BhtOaD/W96WXEqnkvx
         GSi/HCUpbv9NgTXRxS8kJCcGSDaBg5WlvbXvz5S4Fquuch1SjQPd/lrEYL59xPqmSbW/
         9NwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GB7VUd3L;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JY2+qxZb0F+7EXN9LezQCB22r6bXSMgSnADp4gkw6Gc=;
        b=djQwjG46Zulbu04WraHcaS4TzgWYW1Ht9vDQUMW4Bxd0Fv3sTepDi2GCbWL8gwYeh4
         +SmuaV9Mcrea7htgtp/eQey+8dq+yI+EAy2kUn5j5oVCYqL70FUUallKI8qQlTkIMwi+
         07m5SIuMt+OL2dv2JMN0SjvwDKdysXZHGWjpI/07dh0XSN59dJiygSR7Hxf7ikG6G8P3
         cZ+m3l8JJFbWqSbJP2Ad4x/dGbkL9kmrpkRLdC8/oNsYSFM5O04P2n7xit07Gr+aFro2
         q+0kg4Q+nhpiC9YMZdCftnNLdCmchFY3uOcG0ednb/Rozo1OwL5y8Fq9TQohQe4ArYD5
         vCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JY2+qxZb0F+7EXN9LezQCB22r6bXSMgSnADp4gkw6Gc=;
        b=Bo9Ahai9ezlvuPLRrQj8olzFHaKbt76ds0Oo1iRbWtfsDf3soTBML49WgRZmOxED/Q
         JaPhY6CYocYhTMn1PaIFL28zOJSmqcHkL3QPMCivRbquE5dZ4moo57gLXtr/IVjLREB8
         YU+6ashboAWjODT90ORZ9MmX9+EUZNpdgnkS9Yu5nFiKE/dcRQaMKh5yd+DGjNeg78Cx
         WiJCy1Bi9tOXFACF5gDQ9RIR0RAXp35QshS7x/kbUfSV/yGQo4eb96614PwvIu19O6co
         U/+Td+QqJdr8QoIPQmsH9kcS8XkpimxTSt4RZyLXIJjD2BOU5SkbAdoI+q8/GymLJBcm
         xpqA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWWerfDC8947/AaFk0GcfxZY94ZhosPnB55pzmje161t5A1ovWE
	9XqZWkynvmMDNlWKCP4f0jM=
X-Google-Smtp-Source: APXvYqyix2DY1851IS0sXpzO+xoRgdcabIBN6XGFbvkfCRbcOTwAAs/xWGYnnJ1JbmTvCwK0cys8kQ==
X-Received: by 2002:ae9:ea06:: with SMTP id f6mr3519339qkg.246.1576077219932;
        Wed, 11 Dec 2019 07:13:39 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e017:: with SMTP id m23ls722939qkk.16.gmail; Wed, 11 Dec
 2019 07:13:39 -0800 (PST)
X-Received: by 2002:ae9:ee11:: with SMTP id i17mr3352738qkg.333.1576077219519;
        Wed, 11 Dec 2019 07:13:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576077219; cv=none;
        d=google.com; s=arc-20160816;
        b=c7aeY8lXbXrEs3Z/qZuV5wSd1wWjXoEKLxzKKki643ZZegeogxsji2L9kQoB01sFJR
         EmyuWOWQdeig17cbs0bacP7EFbUO9dcWYklAkoLt3P16JZC8zQfvOg06cAI0muWRwNqs
         sZIHnq7i8dbtLujb4v2pDVMErdKOL9C00lEOL69ILbCFrh91cA8DuhAmwrxuaXGfk7o3
         Z+K6IxRjKfc7ffbJN0hC0Mil2+l8E+GAQlfwrugolNMiv0ylNeMzL2E4Epz/BczqqqZg
         eNgfa6kdUi10OslPDS/Cxr17iLO34EZG0hWTs50zPN1H5XTPNxoRIScvQLjr0TZUuyjz
         uQNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YJO8gG0Kwdp7bkkLWiS48s7bJ/LXVlIFYlOG8TFu/O4=;
        b=DSEvBoFiBkbXrFHXmhfNg/C16z6BolEUpHJ6VraUK/ILdKMQVYCCJGzrqxMwXpciUf
         vjTRFzaK9CGQAPQ9j2jIjFVXV7glhmtNLDFEDRRqRA5EV0uhwQ/MrgJVDbXoKKEDDoZT
         PKE9s7McTbFWREIyjNuJt1Ueyym27kaBvJwAP9LbRLqAPgHethGQDrXpoo6YhqJcXKn4
         B7UqHzeI5IL4lsxho2dQ15pqJwpVq2A3+xMcy6ure7LPGRWgJs1nwVkFtrLK75vOZXbS
         nabaBKQfewlVMuJg22Rxc9/RRPYRV+bCxb6FN4VoaB7nmulxPHATAR6V0RuqjZUpenC0
         ZQXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GB7VUd3L;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si65179qki.4.2019.12.11.07.13.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:13:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 845602465C;
	Wed, 11 Dec 2019 15:13:37 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 098/134] scsi: target: iscsi: Wait for all commands to finish before freeing a session
Date: Wed, 11 Dec 2019 10:11:14 -0500
Message-Id: <20191211151150.19073-98-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211151150.19073-1-sashal@kernel.org>
References: <20191211151150.19073-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GB7VUd3L;       spf=pass
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
index d19e051f2bc23..f194ffc4699e0 100644
--- a/drivers/target/iscsi/iscsi_target.c
+++ b/drivers/target/iscsi/iscsi_target.c
@@ -1165,7 +1165,9 @@ int iscsit_setup_scsi_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 		hdr->cmdsn, be32_to_cpu(hdr->data_length), payload_length,
 		conn->cid);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	cmd->sense_reason = transport_lookup_cmd_lun(&cmd->se_cmd,
 						     scsilun_to_int(&hdr->lun));
@@ -2002,7 +2004,9 @@ iscsit_handle_task_mgt_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 			      conn->sess->se_sess, 0, DMA_NONE,
 			      TCM_SIMPLE_TAG, cmd->sense_buffer + 2);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	/*
 	 * TASK_REASSIGN for ERL=2 / connection stays inside of
@@ -4232,6 +4236,8 @@ int iscsit_close_connection(
 	 * must wait until they have completed.
 	 */
 	iscsit_check_conn_usage_count(conn);
+	target_sess_cmd_list_set_waiting(sess->se_sess);
+	target_wait_for_sess_cmds(sess->se_sess);
 
 	ahash_request_free(conn->conn_tx_hash);
 	if (conn->conn_rx_hash) {
diff --git a/include/scsi/iscsi_proto.h b/include/scsi/iscsi_proto.h
index b71b5c4f418c5..533f56733ba84 100644
--- a/include/scsi/iscsi_proto.h
+++ b/include/scsi/iscsi_proto.h
@@ -627,6 +627,7 @@ struct iscsi_reject {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211151150.19073-98-sashal%40kernel.org.
