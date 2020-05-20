Return-Path: <open-iscsi+bncBDA4VMEL3QNRBMFMSL3AKGQEJGUES7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 490F01DA7FD
	for <lists+open-iscsi@lfdr.de>; Wed, 20 May 2020 04:30:09 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id b26sf197616ljo.9
        for <lists+open-iscsi@lfdr.de>; Tue, 19 May 2020 19:30:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589941808; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGBcY9IZYyYG7qiFT4K1LFobqWspu2wHe08xKzvQ+cokw5SSLoZAiKWY2XSrP0NMyV
         wgJcSojXEvIl1a7vZuISvgRP6vi1w8EEqPu3XrsPH+J6EmMxgsJizyYKYMVdFnhJhc5d
         tcwtNyjx7kJCXuOm3Uqg3nK4QUrYFsZttk6MSv/F8ejtwz6bai7UyDE4BUFZIiF0PxDx
         8kSSQ4Z3SiStGa2zZJjoCs2KJVjsCPgzy1UsM6xOQqVsVAYVIRqpZmHF75ZBGKFIQ52W
         iBvRUbHnduIRYW0zu82vkVSZDFVhV58TUh5TLowdHgTZL2Jbr+h9XeIxeUfY1W45X9gc
         IdRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=plqUn/98fGZszQ24+zqo9eJIj98nFlRI7CyXgsjsZI0=;
        b=g2ba1//sNsEK0V1c8FgqIjRXjEHrFwPaBNZfLuNVnEvJueYVJz1/K59Lgo4YC1TAJS
         i6GFFmpEr28r2QGntoU+q1o0VEyHcDTI/4ddvl/ydY8/I8vX3pdWxO9iUAU6sGSC2QCn
         eI391so+HDDY1KG6s49ynuCkVUJoc6fR3LznrsH7i53VcNyb1Cw0CPU2jaw2wyo7LON0
         /yiM3ENsZGEV4PUxHB+H3QxuvGFZsCn2jhWG3hlMfDzVnslGQzV74Bpdg60sj5NA83oS
         DI87DdQdKOORT1PvejpERtqrhlYyiIcuUxix6V5t6kWvXqoWb2AdgsQlloA8nsE8A4Ny
         r6Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=plqUn/98fGZszQ24+zqo9eJIj98nFlRI7CyXgsjsZI0=;
        b=T47eb8BahD1Cx4tkLQ+jgDsu27hMGQbh7iU0KbXpikZyxcH3gF53h5crBSnLWrTkEk
         luTcQfWHp3vaBc1Y353+GukZ2dS3PXEAvjg6Eg2IoK8NbiatWKYULY6lh4pM649sIigr
         teYBZvfXZGJrwA7zf+xtS5mvT0pa9aqb40BKXRrChMcFcXeP5vRLq94q3zoxi3uQNnDe
         Lu6RYR+oT2ojVSG7Nl9Pe18c5+mC5GxNMNSaNf5qfrOSOowaHKWVNFSnP0xPhm3BI6AW
         r9pRUNhqJ/04UExiSmihXwbLN+KKRcmAePcZd9Spctddew/IxLClh440RvtA8OERKT+D
         EtOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=plqUn/98fGZszQ24+zqo9eJIj98nFlRI7CyXgsjsZI0=;
        b=Yes5n8m9XZVxm9gqBA2ItGuiuRM/ybMl9IlHKFUcxZrEyI0a6GnJFhRD7dM3SA8RQ8
         TJA2TK2CfYRDeQWW523ZJInSWHtz6X2hUp+ns/Yu8vwTRjM7wbqYGePPUc/TDbob/BXf
         vjdVwCoachcEQ8+yfZfKBhqUWthe+6eqUZme6uWhxxF1o4olYqqYthXMXDQ3VNsVuYyb
         FROWzVuu81j09nmUKRYrU4tdTm9cpfUf+w6ZE1x0x0IHW/1dv2OYbqYYaoJeBQF7vcEf
         ZK5obQUBH8OTYfNbOpJguLoldgdXEvcljcVBeXdnNslOIKBbB7Ofw6f1qYge6oPahbBC
         Ne3w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533P3mQmLsf/TBxg4AMugsQvjI925LTfyl87pP3/OEBY0QbbQHnR
	zyYHdgxTXVu0FeFaTr1xiv8=
X-Google-Smtp-Source: ABdhPJwlhote2oJlu9A/OoxNpHCiQO4CmNxSobbcJO81B/fCeqmGbRX+bPTRJk8LeaYKWEQpcNpWag==
X-Received: by 2002:a2e:890e:: with SMTP id d14mr1364455lji.216.1589941808750;
        Tue, 19 May 2020 19:30:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9042:: with SMTP id n2ls284700ljg.4.gmail; Tue, 19 May
 2020 19:30:08 -0700 (PDT)
X-Received: by 2002:a2e:b891:: with SMTP id r17mr1458436ljp.58.1589941808046;
        Tue, 19 May 2020 19:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589941808; cv=none;
        d=google.com; s=arc-20160816;
        b=kS0HgqHQWp5N64FFv/cnUwKJh0wSeu62UuORIzZI4gFuF6FgT9y7uLcJy4idr0EjuN
         iDKMverhabMG4SA6J1hhWzrG3PPUtxhQWBEvrFVwtezqOSPI8A7lK0GsgIFZ7zYWCEdp
         orxta0R0iMCh/RX1zBBlbbakpPV7otrV0Sf41t8qFc38wRqq86bKpW7DUvwHjWSD4AdV
         w81X6C8PummyXY+d25RHqIox5kkbMBuWHFGjv9ibClRyZ8v51tGKX7BhM3QzD71ONtJk
         y4snCwPAcT0N5Jkil+GfAgDiIE0BDt878ErMwNIdCC7UZYzFLixUNey2K1GIG8eQqIyH
         GcFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=OSPX275PmKJLNX6cAlF/h/J/y7006bIXA3+pc54jXvI=;
        b=ipv7/M0xeMbyTW7E77Cybhh8T+SdKcxBE3u22y0eLmh33nrF2ovsa17NYxJ/Mewt0T
         dPl7UKBVXv/CMcRZ1+6t34hZqZ0MZSMy1SgDl+YcCf+9YCBtMUqs65XNpjDGeKez7rKq
         iQcJk4MpBUAv9IB2tnB8tfMxtwSH/HifZvySXYtGJP83ynSM6DVxBXjjTymKTbHGm2hd
         W4D0JhZZnn6uiQ7QWczU9xZaPmHayYt2ykkYLEM7ZZNnwqh17YL9vtA6D4v/wRYD2q7f
         rVf2AzKnxbMra9a+DTkBNMnQroenNN6thyXRYU1/gBfqQY7wkpEraXMgreFPvdql2ZXl
         6gNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id 130si77969lfi.3.2020.05.19.19.30.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 May 2020 19:30:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 5658C2A10E9
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: martin.petersen@oracle.com
Cc: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	lduncan@suse.com,
	cleech@redhat.com,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com,
	Khazhismel Kumykov <khazhy@google.com>
Subject: [PATCH v2] iscsi: Fix deadlock on recovery path during GFP_IO reclaim
Date: Tue, 19 May 2020 22:29:59 -0400
Message-Id: <20200520022959.1912856-1-krisman@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

iscsi suffers from a deadlock in case a management command submitted via
the netlink socket sleeps on an allocation while holding the
rx_queue_mutex, if that allocation causes a memory reclaim that
writebacks to a failed iscsi device.  Then, the recovery procedure can
never make progress to recover the failed disk or abort outstanding IO
operations to complete the reclaim (since rx_queue_mutex is locked),
thus locking the system.

Nevertheless, just marking all allocations under rx_queue_mutex as
GFP_NOIO (or locking the userspace process with something like
PF_MEMALLOC_NOIO) is not enough, since the iscsi command code relies on
other subsystems that try to grab locked mutexes, whose threads are
GFP_IO, leading to the same deadlock. One instance where this situation
can be observed is in the backtraces below, stitched from multiple bugs
reports, involving the kobj uevent sent when a session is created.

The root of the problem is not the fact that iscsi does GFP_IO
allocations, that is acceptable. The actual problem is that
rx_queue_mutex has a very large granularity, covering every unrelated
netlink command execution at the same time as the error recovery path.

The proposed fix leverages the recently added mechanism to stop failed
connections from the kernel, by enabling it to execute even though a
management command from the netlink socket is being run (rx_queue_mutex
is held), provided that the command is known to be safe.  It splits the
rx_queue_mutex in two mutexes, one protecting from concurrent command
execution from the netlink socket, and one protecting stop_conn from
racing with other connection management operations that might conflict
with it.

It is not very pretty, but it is the simplest way to resolve the
deadlock.  I considered making it a lock per connection, but some
external mutex would still be needed to deal with iscsi_if_destroy_conn.

The patch was tested by forcing a memory shrinker (unrelated, but used
bufio/dm-verity) to reclaim ISCSI pages every time
ISCSI_UEVENT_CREATE_SESSION happens, which is reasonable to simulate
reclaims that might happen with GFP_KERNEL on that path.  Then, a faulty
hung target causes a connection to fail during intensive IO, at the same
time a new session is added by iscsid.

The following stacktraces are stiches from several bug reports, showing
a case where the deadlock can happen.

 iSCSI-write
         holding: rx_queue_mutex
         waiting: uevent_sock_mutex

         kobject_uevent_env+0x1bd/0x419
         kobject_uevent+0xb/0xd
         device_add+0x48a/0x678
         scsi_add_host_with_dma+0xc5/0x22d
         iscsi_host_add+0x53/0x55
         iscsi_sw_tcp_session_create+0xa6/0x129
         iscsi_if_rx+0x100/0x1247
         netlink_unicast+0x213/0x4f0
         netlink_sendmsg+0x230/0x3c0

 iscsi_fail iscsi_conn_failure
         waiting: rx_queue_mutex

         schedule_preempt_disabled+0x325/0x734
         __mutex_lock_slowpath+0x18b/0x230
         mutex_lock+0x22/0x40
         iscsi_conn_failure+0x42/0x149
         worker_thread+0x24a/0xbc0

 EventManager_
         holding: uevent_sock_mutex
         waiting: dm_bufio_client->lock

         dm_bufio_lock+0xe/0x10
         shrink+0x34/0xf7
         shrink_slab+0x177/0x5d0
         do_try_to_free_pages+0x129/0x470
         try_to_free_mem_cgroup_pages+0x14f/0x210
         memcg_kmem_newpage_charge+0xa6d/0x13b0
         __alloc_pages_nodemask+0x4a3/0x1a70
         fallback_alloc+0x1b2/0x36c
         __kmalloc_node_track_caller+0xb9/0x10d0
         __alloc_skb+0x83/0x2f0
         kobject_uevent_env+0x26b/0x419
         dm_kobject_uevent+0x70/0x79
         dev_suspend+0x1a9/0x1e7
         ctl_ioctl+0x3e9/0x411
         dm_ctl_ioctl+0x13/0x17
         do_vfs_ioctl+0xb3/0x460
         SyS_ioctl+0x5e/0x90

 MemcgReclaimerD"
         holding: dm_bufio_client->lock
         waiting: stuck io to finish (needs iscsi_fail thread to progress)

         schedule at ffffffffbd603618
         io_schedule at ffffffffbd603ba4
         do_io_schedule at ffffffffbdaf0d94
         __wait_on_bit at ffffffffbd6008a6
         out_of_line_wait_on_bit at ffffffffbd600960
         wait_on_bit.constprop.10 at ffffffffbdaf0f17
         __make_buffer_clean at ffffffffbdaf18ba
         __cleanup_old_buffer at ffffffffbdaf192f
         shrink at ffffffffbdaf19fd
         do_shrink_slab at ffffffffbd6ec000
         shrink_slab at ffffffffbd6ec24a
         do_try_to_free_pages at ffffffffbd6eda09
         try_to_free_mem_cgroup_pages at ffffffffbd6ede7e
         mem_cgroup_resize_limit at ffffffffbd7024c0
         mem_cgroup_write at ffffffffbd703149
         cgroup_file_write at ffffffffbd6d9c6e
         sys_write at ffffffffbd6662ea
         system_call_fastpath at ffffffffbdbc34a2

Reported-by: Khazhismel Kumykov <khazhy@google.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

Changes since v1:
  - Rebase to v5.8/scsi-queue
---
 drivers/scsi/scsi_transport_iscsi.c | 64 +++++++++++++++++++++--------
 1 file changed, 47 insertions(+), 17 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index b2a803c51288..ea6d498fa923 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1616,6 +1616,12 @@ static DECLARE_TRANSPORT_CLASS(iscsi_connection_class,
 static struct sock *nls;
 static DEFINE_MUTEX(rx_queue_mutex);
 
+/*
+ * conn_mutex protects the {start,bind,stop,destroy}_conn from racing
+ * against the kernel stop_connection recovery mechanism
+ */
+static DEFINE_MUTEX(conn_mutex);
+
 static LIST_HEAD(sesslist);
 static LIST_HEAD(sessdestroylist);
 static DEFINE_SPINLOCK(sesslock);
@@ -2445,6 +2451,32 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
 }
 EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
 
+/*
+ * This can be called without the rx_queue_mutex, if invoked by the kernel
+ * stop work. But, in that case, it is guaranteed not to race with
+ * iscsi_destroy by conn_mutex.
+ */
+static void iscsi_if_stop_conn(struct iscsi_cls_conn *conn, int flag)
+{
+	/*
+	 * It is important that this path doesn't rely on
+	 * rx_queue_mutex, otherwise, a thread doing allocation on a
+	 * start_session/start_connection could sleep waiting on a
+	 * writeback to a failed iscsi device, that cannot be recovered
+	 * because the lock is held.  If we don't hold it here, the
+	 * kernel stop_conn_work_fn has a chance to stop the broken
+	 * session and resolve the allocation.
+	 *
+	 * Still, the user invoked .stop_conn() needs to be serialized
+	 * with stop_conn_work_fn by a private mutex.  Not pretty, but
+	 * it works.
+	 */
+	mutex_lock(&conn_mutex);
+	conn->transport->stop_conn(conn, flag);
+	mutex_unlock(&conn_mutex);
+
+}
+
 static void stop_conn_work_fn(struct work_struct *work)
 {
 	struct iscsi_cls_conn *conn, *tmp;
@@ -2463,30 +2495,17 @@ static void stop_conn_work_fn(struct work_struct *work)
 		uint32_t sid = iscsi_conn_get_sid(conn);
 		struct iscsi_cls_session *session;
 
-		mutex_lock(&rx_queue_mutex);
-
 		session = iscsi_session_lookup(sid);
 		if (session) {
 			if (system_state != SYSTEM_RUNNING) {
 				session->recovery_tmo = 0;
-				conn->transport->stop_conn(conn,
-							   STOP_CONN_TERM);
+				iscsi_if_stop_conn(conn, STOP_CONN_TERM);
 			} else {
-				conn->transport->stop_conn(conn,
-							   STOP_CONN_RECOVER);
+				iscsi_if_stop_conn(conn, STOP_CONN_RECOVER);
 			}
 		}
 
 		list_del_init(&conn->conn_list_err);
-
-		mutex_unlock(&rx_queue_mutex);
-
-		/* we don't want to hold rx_queue_mutex for too long,
-		 * for instance if many conns failed at the same time,
-		 * since this stall other iscsi maintenance operations.
-		 * Give other users a chance to proceed.
-		 */
-		cond_resched();
 	}
 }
 
@@ -2846,8 +2865,11 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
 	spin_unlock_irqrestore(&connlock, flags);
 
 	ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
+
+	mutex_lock(&conn_mutex);
 	if (transport->destroy_conn)
 		transport->destroy_conn(conn);
+	mutex_unlock(&conn_mutex);
 
 	return 0;
 }
@@ -3689,9 +3711,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 			break;
 		}
 
+		mutex_lock(&conn_mutex);
 		ev->r.retcode =	transport->bind_conn(session, conn,
 						ev->u.b_conn.transport_eph,
 						ev->u.b_conn.is_leading);
+		mutex_unlock(&conn_mutex);
+
 		if (ev->r.retcode || !transport->ep_connect)
 			break;
 
@@ -3713,9 +3738,11 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_START_CONN:
 		conn = iscsi_conn_lookup(ev->u.start_conn.sid, ev->u.start_conn.cid);
 		if (conn) {
+			mutex_lock(&conn_mutex);
 			ev->r.retcode = transport->start_conn(conn);
 			if (!ev->r.retcode)
 				conn->state = ISCSI_CONN_UP;
+			mutex_unlock(&conn_mutex);
 		}
 		else
 			err = -EINVAL;
@@ -3723,17 +3750,20 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_STOP_CONN:
 		conn = iscsi_conn_lookup(ev->u.stop_conn.sid, ev->u.stop_conn.cid);
 		if (conn)
-			transport->stop_conn(conn, ev->u.stop_conn.flag);
+			iscsi_if_stop_conn(conn, ev->u.stop_conn.flag);
 		else
 			err = -EINVAL;
 		break;
 	case ISCSI_UEVENT_SEND_PDU:
 		conn = iscsi_conn_lookup(ev->u.send_pdu.sid, ev->u.send_pdu.cid);
-		if (conn)
+		if (conn) {
+			mutex_lock(&conn_mutex);
 			ev->r.retcode =	transport->send_pdu(conn,
 				(struct iscsi_hdr*)((char*)ev + sizeof(*ev)),
 				(char*)ev + sizeof(*ev) + ev->u.send_pdu.hdr_size,
 				ev->u.send_pdu.data_size);
+			mutex_unlock(&conn_mutex);
+		}
 		else
 			err = -EINVAL;
 		break;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200520022959.1912856-1-krisman%40collabora.com.
