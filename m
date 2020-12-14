Return-Path: <open-iscsi+bncBDO7B5X3UIBBBA6B3T7AKGQE2ISBZII@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3132D9418
	for <lists+open-iscsi@lfdr.de>; Mon, 14 Dec 2020 09:21:25 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id o17sf11306758pgm.18
        for <lists+open-iscsi@lfdr.de>; Mon, 14 Dec 2020 00:21:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607934083; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZIsAuFLLZOjK+SSVSA+cXBlBNx/b7MBKk7oHVdxM/bFIiXpS0X9orNshbujmUMt2Sq
         ++iDsEnKPyODRMHe0P4gZNQQJfJZUWtBYjbONemIDXYh9S2xIo18nmvP+16FQbBOItdn
         QIyadiLIsZqv38s42BALVGJXscsO+4EpQsIxPvH+ME9oOmYc5MVNcR9nsm+fAAlItPaA
         TAYjd5EusiSHcNyeKmmrV89K4NTZVi6X4G/9XfhYOyf2z7evWQTu1FQQVqeWuxImL40v
         HF1iumxhEFNWtPYw3JWvU7JqHmRaKCdnl5WGmJoCmL+tmLrKchO3kRHhNWg0sov3vq88
         MYyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=dNqcx4iRH18B+c4nODJHbzX8BwfEcrp9wP4vnuzt7mI=;
        b=Fs7w529PBJXwpMHFKZjolJSWesiI+BnR5NZ8/DduFKzT3CpD4obWsSNh5lYS/MR7R1
         9XQNEGXg94ryMRSelp1O4Og/90vjN7Uh9g1B2X7Bow256Mr0jA9p/111/7+FSCFtvcnP
         oflgUeivA90CIf39lM3NhzV5+h0+Ntr7ckZl2rgZQbVT2wOsk79Y7q89jHCH0qs2J+xn
         4utg23TDkwWRRiUZckdOdsRzHmnif7HH2ztfDPhaVmWUiAnyNrdWb08/nHm2KfZlbRK2
         U5FVLmjhCQflFR/lUVM32X2ues41SGj1fEx5gKjQsBU/tgupPE+Tw7xr++BfSrjgTnIc
         2pig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNqcx4iRH18B+c4nODJHbzX8BwfEcrp9wP4vnuzt7mI=;
        b=pG1I3U6neIL2ircESDdyHDcTsQnVutssuyvmTzMHjD0bVbjuTPCONWqMDYEilvk36w
         ddkCZpy7mRbHuLxWoNeyGdvoib+xbSXT9TmNElzO6a8VeZcp1PHniYUZBZNawnLplQiE
         Gb6urmOEpAsX+0TJj449bcFXBXITI04GIj6NwJxF03Ye0tQERLlgEcQrAADXGXUNKyIo
         0bqRLYxK/Z2MdwMsIlzeAdMLfqIiNgTKQkpKemfGM+oYub+mBsL32hcIU0latnL654kQ
         /vzRbrO7pSI26eM0TrYI5KY/+WGuYsvSsgxjLxgYallVtwbp3fCHOa8Bt4mEu0dMtXWc
         T7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dNqcx4iRH18B+c4nODJHbzX8BwfEcrp9wP4vnuzt7mI=;
        b=KmHoxlwXaEWoTKbA0xowDB1ojuWLJ9w45kTncSRpJb/iLtqZn5U+VLXdPBG7q/aKxI
         m8qPUveXNztQMnIwihGjm2ChwA+pBnBRZ9w2G4pbjfEvcDGWBN1uqFvP8vJYejTVqXqL
         5KZUvztNHw6DlzZzGwrppPW8p66XslaQnI0S7e841KP67C2cZIDJaM+vnMDGx6pFNStm
         BX4KkmezyA40Unou5smwg8pG9p1/XOY9EErUwdkrQRiotR+Fc1R3wQsoO9N0w+Tk7JiJ
         dgUINbqmjwinBtUn/ZErdmS8GkmPU1MgGJFsq0x0PbP10Oi9pKchk3JgZTIDHdawsjOU
         0+kg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533Z1rshBCPV8qaAAuofPYJs321YvYklWAgKjflT1eQu8vzVyONC
	ezalv4qFGDXBAjTkw1BG0+o=
X-Google-Smtp-Source: ABdhPJw8R2qJ5H+tjY0BzdOmZ3hVJTlSOzcbXFukWPrgZsY0KfIRKSvYXVJDTz50nvC7pH0xlECEVQ==
X-Received: by 2002:a05:6a00:88b:b029:19c:780e:1cd with SMTP id q11-20020a056a00088bb029019c780e01cdmr23149618pfj.64.1607934083569;
        Mon, 14 Dec 2020 00:21:23 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:6491:: with SMTP id y139ls6091107pfb.6.gmail; Mon, 14
 Dec 2020 00:21:23 -0800 (PST)
X-Received: by 2002:a63:5f93:: with SMTP id t141mr9488860pgb.299.1607934082976;
        Mon, 14 Dec 2020 00:21:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607934082; cv=none;
        d=google.com; s=arc-20160816;
        b=KJtFU7dXXo1QS51eg43Q5kzC6t1gUD+DJeQyGYwN+sVYxOQkm4J+PaEWPdooUeG0Dn
         GcFAifdZ/O/sdmuA0tmbj528siOXuKzp6g5w9hrYIkMsRqJDohYgqmOkpcGizeumnSQ6
         nOWDcFIyOgI2RCOreqsIEpkx5cyL1uwLLRs/XWr4HClGg9ATwGaLNL/Q7LB2Jvm4tJDr
         Vl6bScXdcOgl3TIFoC2Zs7QaPx1WXcrqU0BGfyngMChbwTevjDWKLF9dV3BiCTJBFdvw
         35wmymzY+OXlP95MJr0ULf9Z8OndI1Ec59m1CjJgICs0XyWwrInL+ERHDVGUOGnJMtFi
         +fsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=mnyS53oBjsQ+h2tS8qRFH7MQJxm/gNPP2iTUEkS4lZ0=;
        b=x836CoqugrBKrNhaMZ/6WvbIh42hI+ZJff9Zyvhobbhmpg+rOKxFh8nukWcHMYp+Ys
         KzrDHkaOv9VlQA0UBMFwXHfZnTMz0yxfDe+ruwlaDCbd1nvhGyfld5f4UfxbBBf838hF
         Bq8zgM1YMNHz36AKASl2R0pcbp/jjQBaOHj26Ai3+Q1QXwRy5MxYMukzHoH4qb/5ntQB
         BVRf4KKNNSn9qrrkoJClxvQTMKWK2zCm7Cbf6Al/2mH8mXKRlw3z4iGvq5K8xlkZxCfs
         3GdXlO96Y6OX91eJr7mNO86CpYvfYPD/wZ+Sn9WgzFebUOPjpKEop2MBDFGYgf3+0ZoB
         +hYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id v8si1231489pgj.1.2020.12.14.00.21.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 00:21:22 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4CvZ8K479tzkrZB;
	Mon, 14 Dec 2020 16:20:33 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.498.0; Mon, 14 Dec 2020
 16:21:09 +0800
From: Wu Bo <wubo40@huawei.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <michaelc@cs.wisc.edu>,
	<linux-scsi@vger.kernel.org>, <open-iscsi@googlegroups.com>
CC: <martin.petersen@oracle.com>, <jejb@linux.ibm.com>,
	<lutianxiong@huawei.com>, <linfeilong@huawei.com>,
	<liuzhiqiang26@huawei.com>, <wubo40@huawei.com>, <haowenchao@huawei.com>
Subject: [RFC PATCH] scsi:libiscsi:Fix possible NULL dereference in iscsi_eh_cmd_timed_out
Date: Mon, 14 Dec 2020 16:41:57 +0800
Message-ID: <1607935317-263599-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as
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

When testing kernel 4.18 version, NULL pointer dereference problem occurs
in iscsi_eh_cmd_timed_out function.

I think this bug in the upstream is still exists.

The analysis reasons are as follows:
1)  For some reason, I/O command did not complete within 
    the timeout period. The block layer timer works, 
    call scsi_times_out() to handle I/O timeout logic. 
    At the same time the command just completes.

2)  scsi_times_out() call iscsi_eh_cmd_timed_out() 
    to processing timeout logic.  although there is an NULL judgment 
	for the task, the task has not been released yet now.    

3)  iscsi_complete_task() call __iscsi_put_task(), 
    The task reference count reaches zero, the conditions for free task 
    is met, then iscsi_free_task () free the task, 
    and let sc->SCp.ptr = NULL. After iscsi_eh_cmd_timed_out passes 
    the task judgment check, there may be NULL dereference scenarios
    later.
	
   CPU0                                       	       CPU3

    |- scsi_times_out()                        		|- iscsi_complete_task()
    |                                       		|
    |- iscsi_eh_cmd_timed_out()                 	|- __iscsi_put_task()
    |                                       		|
    |- task=sc->SCp.ptr, task is not NUL, check passed  |- iscsi_free_task(task) 
    |                                       		|
    | 							|-> sc->SCp.ptr = NULL
    |                                                   |
    |- task is NULL now, NULL pointer dereference       |
    |                                           	| 
   \|/                                     	       \|/

Calltrace:
[380751.840862] BUG: unable to handle kernel NULL pointer dereference at 0000000000000138
[380751.843709] PGD 0 P4D 0
[380751.844770] Oops: 0000 [#1] SMP PTI
[380751.846283] CPU: 0 PID: 403 Comm: kworker/0:1H Kdump: loaded Tainted: G
[380751.851467] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
[380751.856521] Workqueue: kblockd blk_mq_timeout_work
[380751.858527] RIP: 0010:iscsi_eh_cmd_timed_out+0x15e/0x2e0 [libiscsi]
[380751.861129] Code: 83 ea 01 48 8d 74 d0 08 48 8b 10 48 8b 4a 50 48 85 c9 74 2c 48 39 d5 74
[380751.868811] RSP: 0018:ffffc1e280a5fd58 EFLAGS: 00010246
[380751.870978] RAX: ffff9fd1e84e15e0 RBX: ffff9fd1e84e6dd0 RCX: 0000000116acc580
[380751.873791] RDX: ffff9fd1f97a9400 RSI: ffff9fd1e84e1800 RDI: ffff9fd1e4d6d420
[380751.876059] RBP: ffff9fd1e4d49000 R08: 0000000116acc580 R09: 0000000116acc580
[380751.878284] R10: 0000000000000000 R11: 0000000000000000 R12: ffff9fd1e6e931e8
[380751.880500] R13: ffff9fd1e84e6ee0 R14: 0000000000000010 R15: 0000000000000003
[380751.882687] FS:  0000000000000000(0000) GS:ffff9fd1fac00000(0000) knlGS:0000000000000000
[380751.885236] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[380751.887059] CR2: 0000000000000138 CR3: 000000011860a001 CR4: 00000000003606f0
[380751.889308] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[380751.891523] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[380751.893738] Call Trace:
[380751.894639]  scsi_times_out+0x60/0x1c0
[380751.895861]  blk_mq_check_expired+0x144/0x200
[380751.897302]  ? __switch_to_asm+0x35/0x70
[380751.898551]  blk_mq_queue_tag_busy_iter+0x195/0x2e0
[380751.900091]  ? __blk_mq_requeue_request+0x100/0x100
[380751.901611]  ? __switch_to_asm+0x41/0x70
[380751.902853]  ? __blk_mq_requeue_request+0x100/0x100
[380751.904398]  blk_mq_timeout_work+0x54/0x130
[380751.905740]  process_one_work+0x195/0x390
[380751.907228]  worker_thread+0x30/0x390
[380751.908713]  ? process_one_work+0x390/0x390
[380751.910350]  kthread+0x10d/0x130
[380751.911470]  ? kthread_flush_work_fn+0x10/0x10
[380751.913007]  ret_from_fork+0x35/0x40

crash> dis -l iscsi_eh_cmd_timed_out+0x15e
xxxxx/drivers/scsi/libiscsi.c: 2062

1970 enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
{
...
1984         spin_lock_bh(&session->frwd_lock);
1985         task = (struct iscsi_task *)sc->SCp.ptr;
1986         if (!task) {    
1987                 /*
1988                  * Raced with completion. Blk layer has taken ownership
1989                  * so let timeout code complete it now.
1990                  */     
1991                 rc = BLK_EH_DONE;
1992                 goto done;
1993         }

...

2052         for (i = 0; i < conn->session->cmds_max; i++) {
2053                 running_task = conn->session->cmds[i];
2054                 if (!running_task->sc || running_task == task ||
2055                      running_task->state != ISCSI_TASK_RUNNING)
2056                         continue;
2057
2058                 /*
2059                  * Only check if cmds started before this one have made
2060                  * progress, or this could never fail
2061                  */
2062                 if (time_after(running_task->sc->jiffies_at_alloc, 
2063                                task->sc->jiffies_at_alloc))    <---
2064                         continue;
2065
...
}

carsh> struct scsi_cmnd ffff9fd1e6e931e8
struct scsi_cmnd {
  ...
  SCp = {
    ptr = 0x0,   <--- iscsi_task
    this_residual = 0,
    ...
  },
}

Fixes: 3e5c28ad03 ("libiscsi: merge iscsi_mgmt_task and iscsi_cmd_task")
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/libiscsi.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 0bb5d76..e2cacdd 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -876,7 +876,9 @@ static void iscsi_scsi_cmd_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 	ISCSI_DBG_SESSION(session, "cmd rsp done [sc %p res %d itt 0x%x]\n",
 			  sc, sc->result, task->itt);
 	conn->scsirsp_pdus_cnt++;
+	spin_lock_bh(&session->frwd_lock);
 	iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
+	spin_unlock_bh(&session->frwd_lock);
 }
 
 /**
@@ -917,7 +919,9 @@ static void iscsi_scsi_cmd_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 			  "[sc %p res %d itt 0x%x]\n",
 			  sc, sc->result, task->itt);
 	conn->scsirsp_pdus_cnt++;
+	spin_lock_bh(&conn->session->frwd_lock);
 	iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
+	spin_unlock_bh(&conn->session->frwd_lock);
 }
 
 static void iscsi_tmf_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr)
@@ -1001,7 +1005,10 @@ static int iscsi_nop_out_rsp(struct iscsi_task *task,
 			rc = ISCSI_ERR_CONN_FAILED;
 	} else
 		mod_timer(&conn->transport_timer, jiffies + conn->recv_timeout);
+	spin_lock_bh(&conn->session->frwd_lock);
 	iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
+	spin_unlock_bh(&conn->session->frwd_lock);
+
 	return rc;
 }
 
@@ -1241,7 +1248,9 @@ int __iscsi_complete_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 		}
 
 		iscsi_tmf_rsp(conn, hdr);
+		spin_lock_bh(&session->frwd_lock);
 		iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
+		spin_unlock_bh(&session->frwd_lock);
 		break;
 	case ISCSI_OP_NOOP_IN:
 		iscsi_update_cmdsn(session, (struct iscsi_nopin*)hdr);
@@ -1264,7 +1273,10 @@ int __iscsi_complete_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 recv_pdu:
 	if (iscsi_recv_pdu(conn->cls_conn, hdr, data, datalen))
 		rc = ISCSI_ERR_CONN_FAILED;
+	spin_lock_bh(&session->frwd_lock);
 	iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
+	spin_unlock_bh(&session->frwd_lock);
+
 	return rc;
 }
 EXPORT_SYMBOL_GPL(__iscsi_complete_pdu);
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1607935317-263599-1-git-send-email-wubo40%40huawei.com.
