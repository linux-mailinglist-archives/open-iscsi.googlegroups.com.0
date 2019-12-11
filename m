Return-Path: <open-iscsi+bncBDTZTRGMXIFBBBU3YTXQKGQEAP3WK3A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C356C11B29E
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:38:47 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id d16sf104593otq.19
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:38:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576078726; cv=pass;
        d=google.com; s=arc-20160816;
        b=JwUvHFyc/6F/3nEY+xbAgvOkmU+6ebDlrGMBBjaks2vt8AE5laB03BPsOlCU0MbcKZ
         SE6ObhBc4mI7n0kc+Tode42atrayUxfVM4k9/nOke4GJhj+wengzZA4rICX2LjnciY6t
         SkQT9Tf+8dzQpLwM62G7+XtiePJ9+IQAquwY82+WhE0dvcRyeFzvU0HqoPL0CYBtYzOM
         /mArufI4LZ2ed7uCy3WfKueT+o3Qt0GtKeWNiywatWVwJDXeZQUoPu2kPTbEaCpsL+9M
         F0K8X9GkSdSOsmpUl628nsPFOcOReQam9N0AxgUmcMCuZF35368EAAGcj7KISlLaT+rM
         YdGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=JmzFsk/WeEih67B1FuCRxsTBdGjB7m7iNw/LK1Cz1+M=;
        b=jKtqP10Htc9lexzC8Xr+36Etg9kj8rT+aTZ1jeaUwLqWRFpNY/y4ngWAgkk9LkXmKh
         DfRqndnKrkec5OEGmlV7yJChBSrRM2R1tr1c6NeNCuwyHgE22eNaR99tqvHf4ebeOUU0
         LhXJKAXEcyRI415Q9/MwTW9q1MTbCzR6KaL/92cvwC2e8KFPjwEx2RFC5llU4ioGyKjN
         ewlblVa8WYlG80axxPwk226GxV6oIS5k6GbyVf1rIqhaXxMdVwpMT5OHpA6BydaCBYqU
         XM2BJKf2LNHz0KBU9e8QYWTtPsoOv3aJrMP40wHy471IMbk/qCo1DT0NIa5RsXcQkQfx
         NHfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HAjCLQeT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JmzFsk/WeEih67B1FuCRxsTBdGjB7m7iNw/LK1Cz1+M=;
        b=UNM8+PdKmJw6hb+Qo2Migewg8Q3lRXvnlyApasiLze0CWOsVnzpw4avFwZMrvYgMyl
         yS3qzP4G8P8rl2QQ6aEvMNp/eN66FfnpbsGJeqKcXOsD5VHuS10jq62c3wZKYNWHO3Lz
         1yxugCmhsJu+XrxmJVWvgLIyyOvZNZcp0kZjJhYqCyiyF7v69q+nN+z714X0sjWH5DXJ
         IlfY3Ts4BqK8eq4mErI3+eVLP2DcLD1lYUP0yzk9tLECBkSu/y027sV/JIE8Og9PTehx
         5/J+jqK8EptCWNN2uqjcSjTAJYeGZKMoqIwRtLLJlXEc3NyP4fBPVU+4wcuYngUNMlrY
         epqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JmzFsk/WeEih67B1FuCRxsTBdGjB7m7iNw/LK1Cz1+M=;
        b=VZSYnQKQdPX87j9K+mpqmjIaHDkhfWLSs+pcYDzkqh3iWMqw96eZI3ZCEK1YgiZKKC
         rfbN8hYXwCInDYbc1INeLbxb5R6C9W3XzMt6p6jaibn6lr5U93vK2H1uvfU6iZIvzj6y
         rgKs7QCUtsjujxvu/cYouR95z9VmuwacgeE6AmewY9n4yQUoBqoelLhSspt64+OY5kvI
         D6LkOxyRW9oNrrvsNF3fXYlAvqNgJlas8ZYszS/jilB9bcPioyCMAWd4IOO/3+WQwfrJ
         cbx/9SXUO4Db/jL6mcdMbcECANpA4LlpdDyKZJKzMdsGybyKN+gYYWl3mNu/aCnyiq8R
         EwEQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUNfeKtyLpIvZnd5WtjNuFjwlibwzmvR3G+iLH8zXeZg8XnxGFr
	siE5nZLhaIiq/lkLl8jRBp4=
X-Google-Smtp-Source: APXvYqy7/9ek9Jw0y2t1v2FlIWk04M4j3tnAM/Yjnh4oX+Ng7amngGNm9h9xYBbmsYoECKxFDEmqPg==
X-Received: by 2002:aca:f305:: with SMTP id r5mr3359714oih.174.1576078726157;
        Wed, 11 Dec 2019 07:38:46 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:7241:: with SMTP id a1ls397316otk.13.gmail; Wed, 11 Dec
 2019 07:38:45 -0800 (PST)
X-Received: by 2002:a05:6830:1b6d:: with SMTP id d13mr2786002ote.258.1576078725823;
        Wed, 11 Dec 2019 07:38:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576078725; cv=none;
        d=google.com; s=arc-20160816;
        b=fFCU1asaRC9i/9RKGY0Tg84hEx7IlzoleM0iGi+eRx4LD4UO0DmaKkbflgdbFJIlJo
         KvvKYg+w+izzuCGZ+IiOQb5SEvJCRNV4hJFZXT2OoWFI+1WfFTikWamVtUahKNvdB1yq
         e9snFzg3hs02VBaXKWpAahsjMpGJAfsJma6RyuMthSCDOimgddYKWEKlawmkdR7SiSsG
         +39pEa7Gull48sPkyQXYUQRuEtbXtpo7626bCSKtMeSXUm8AGzzZtEQaAqCxXQvTAqYC
         wQDtOcfYiPuHAQjEsTLA1OydcW0WaPCVPQnmVfPsihkWZ43oHboFCpE5K5EkRlmsW93i
         UY4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UCF0eCUuQkO9nw0nfeHAvSTRVutc5aV5h7JdeD9Ypv8=;
        b=Zswo2re0AWAvq3rJ30J5B6+l3HBVi7T0FR9yUkhhQNiJjQ2XvNPTHU3bCcf1RIM+TS
         CNWLnQv7kvEDaY8dcyUcFHyTXJmBJxktRf5wVay9diL19kQziVYzAfoXUIuMrpyJ8qoG
         R2rXp1zpQeuf5xUWimhQ3qDVHz7D/hKc3qEvqsuJrC7NWrw/cEeJ5+f83z2A8rpwx8VK
         pjp5NvWkyf2/p+d54SPS2OaEKEDLNEKZ0DM/jcK1791ZAsWr+xQInvbCltiI/uhIQuSh
         kOLqACxBiLSjoVDNwjgYZ4fRQoAX8xQUBWM/2gebTr+4iCs9POgqcBuc/soZ8Kk/JPcN
         ExQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HAjCLQeT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q80si113862oic.5.2019.12.11.07.38.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:38:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2222C24671;
	Wed, 11 Dec 2019 15:38:44 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 29/37] scsi: target: iscsi: Wait for all commands to finish before freeing a session
Date: Wed, 11 Dec 2019 10:38:05 -0500
Message-Id: <20191211153813.24126-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211153813.24126-1-sashal@kernel.org>
References: <20191211153813.24126-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HAjCLQeT;       spf=pass
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
index cbb4414edd71b..564828554ca02 100644
--- a/drivers/target/iscsi/iscsi_target.c
+++ b/drivers/target/iscsi/iscsi_target.c
@@ -993,7 +993,9 @@ int iscsit_setup_scsi_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 		hdr->cmdsn, be32_to_cpu(hdr->data_length), payload_length,
 		conn->cid);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	cmd->sense_reason = transport_lookup_cmd_lun(&cmd->se_cmd,
 						     scsilun_to_int(&hdr->lun));
@@ -1804,7 +1806,9 @@ iscsit_handle_task_mgt_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
 			      conn->sess->se_sess, 0, DMA_NONE,
 			      TCM_SIMPLE_TAG, cmd->sense_buffer + 2);
 
-	target_get_sess_cmd(&cmd->se_cmd, true);
+	if (target_get_sess_cmd(&cmd->se_cmd, true) < 0)
+		return iscsit_add_reject_cmd(cmd,
+				ISCSI_REASON_WAITING_FOR_LOGOUT, buf);
 
 	/*
 	 * TASK_REASSIGN for ERL=2 / connection stays inside of
@@ -4390,6 +4394,8 @@ int iscsit_close_connection(
 	 * must wait until they have completed.
 	 */
 	iscsit_check_conn_usage_count(conn);
+	target_sess_cmd_list_set_waiting(sess->se_sess);
+	target_wait_for_sess_cmds(sess->se_sess);
 
 	if (conn->conn_rx_hash.tfm)
 		crypto_free_hash(conn->conn_rx_hash.tfm);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211153813.24126-29-sashal%40kernel.org.
