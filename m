Return-Path: <open-iscsi+bncBDO7B5X3UIBBBXNNYL7AKGQE4THFDXQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B852D3E5F
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Dec 2020 10:20:30 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id e14sf754027iow.23
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Dec 2020 01:20:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607505630; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xn3zFV/zOaqF/iflFsSwWzMbJKngjkicYpS9hCxVqDs0JJXm9GhECwMeXRr5yR0zr5
         0Zc/xHKymCCUuCJU6ut959f3ylwBwhpOoMZ+jq4wb5GFpaY8n2j/739oju8jG8A50YRD
         ojPa4OcXZ0op12rJEuKiTZuD3lZeHvTgi7TVeWdMMMgsn6ZsgwyMderZTYLULTUsyWxf
         2ls4a3rb5zxqvbbX/6B+XgnmZGCCHhz73Xyyf64xoUj5iNeFYRBiQf7nw1sRWBLKPNEM
         tZAnJftN+xFVfm5nPHmWfM/qYPc0yT2MZzZfgEmyc5476DJ2dc5FiV6u30oeSPQ0J44L
         5rMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=t/JtVjLn8v6iuonvphiapjT4ACnM6mNsbx7yXgV+YDY=;
        b=RD70hh8gBxM1/r+7gM9nAzYZiZ2BeJjmVp/uCh4Hzle/9VPSEqjBefdjdsUmuPz8EQ
         qKVq9VObiow1k2pWKgbudV8r3sm/IjORWk+pPUn3juBXdiK6MC+cukAAFSDPt8JPeNw5
         ixoTXVtp23acws9eN6npKNl3ZQH0GsvzIhYtbB74LftBBVAGz1poRRhKtlAsatlw4TqN
         r2ErwCgezxJct1tDWDqE6Px45wEhtUQiti1Y+PEytkYmeYPoWn5Qe+B7S2hrg7S/GCny
         nC1q8IvF7+DEwh0aV0ThpTazO8bA1uoaV/Re15MMWqA8/EQrMfLooZ1VdGkUAsgya3Ww
         m2Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t/JtVjLn8v6iuonvphiapjT4ACnM6mNsbx7yXgV+YDY=;
        b=kKMe8utIWpmhelY1mEmU5TqMmWfvWQTknTv9NJ9wal7N529IEiW8Se+74HxTcfO08y
         G/FcHPWge3tYfBMxB7KkebRwoqWd26QrRHcR1fagXaU4kMkfGxnOflsnEndq8casvS+o
         Ayh75kSMRKKlnD8lYk/962UtFFjbaQ2F7e+QgGZVorls/phX2uhyAJui1FkcNm8OghdH
         yv9rIB80ve4hsdY7oduXtsj/vF/4+t2VGwF2xAujm888BrJbUGmhhheMAK/vWv+w1G77
         z5Wabpys0eKbaX9dcvR4aqFFQTjsTHUhPRVLTTOZuwbnOCAl8kSuIEf178AiLSApJlzI
         B5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t/JtVjLn8v6iuonvphiapjT4ACnM6mNsbx7yXgV+YDY=;
        b=C/RschZfN8fXxYus2frjp/d2ZrQSHoBV+O6J5bj09hhC+wEgFrk+yClDHxSAa1TFyx
         ZVroqb8GZWz2OXVrID5nBGQxJGbAF86+gw0p4qJM7+6ikbWOtwIu29Juj3ssTzTde6Hl
         8q068mRCNET7w6pqa5ubE7zqfcu9L8R1fFh94/tcnpJpNHdve71SL4YRYY2M2HxoE6AB
         +enzIaK1cn9s6JfYE0UZ7ED9ovxrAXMEGX4Dz2zi/8y6tSwVDWRJlXPg1r8Rx/ZvYvbQ
         +nd7FZ/ae3bd6FlSSu0cHc5J5KZyDAKK3d3ezSl1s2NCXAkQCe9bxcwkECfGdQVSHgSX
         FOsA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531+kkv6kUd2iuWAv0VBNf07Q4sFbFD5ABVEeET8d4VrpGuA4+wK
	s3C65KGyUDKhyBlADsTHsbk=
X-Google-Smtp-Source: ABdhPJxxbtmcptTORIjJBYShj+mbX5FGDmU1G8v2/xjFFpd1Z/xVJE6RBRgKJ/vK8pEIAVfpQ8OPwQ==
X-Received: by 2002:a05:6638:25ca:: with SMTP id u10mr1815483jat.33.1607505629978;
        Wed, 09 Dec 2020 01:20:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1905:: with SMTP id w5ls246970ilu.10.gmail; Wed, 09
 Dec 2020 01:20:29 -0800 (PST)
X-Received: by 2002:a92:d5c5:: with SMTP id d5mr1617948ilq.24.1607505629289;
        Wed, 09 Dec 2020 01:20:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607505629; cv=none;
        d=google.com; s=arc-20160816;
        b=pD/1R/yJoTNT2z8RjiJi0n0OX57Qm2Dn3gIjSrk8DURbz12O18lFYImGlxZ9nosE3h
         8dM6qhpTk9HFO5CnzATte1ACE9yOJydizwjsoyL9TybXPMSBYxnKf/lWAxPjanr96y4V
         Itu73nwt0njfzf/4g1duD96oe0wxLA1KMTsyXU0JapL/5CAoE0SJ1jzIDbbG6j8ssTwU
         pow5Jn5NZ7jCcWmJeppMmyhPbm7GIuMHYojkPywrjCgY8b4CZ3PbamkYzimNbXoHuOFc
         /ZzqVkSEHWvhoedYI6zmRg81CCXq3Jm8l0z1hM5BGgcBtqUAatlbD4LeGDTSjlQyto1Q
         Tz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=LMw43Wc3cieUSoalj2cwFYMNsb5HtAB6IaKGOr7iuNk=;
        b=fKJcRVYAMQUAmdgMNn39Exrz/XoG3JquuSw8j5BPCSj1D2tWojLK9HEv2Si8kZgAJj
         79wugRlktgOTzFqJzUwuPZzsSUnKiDsaQgyR6LgCqoHoYdjQvvZVXECP+E5eWc5ioK9D
         rXpdm1R1svxKoz8hYf50w/eC8m9286pNsMcpIuLyl5nQizKPk7pXsZHrQcGuai0a/mdm
         1hfEZpBay629c6ETrTrqmmd8Xw5gRjvWZSTO0PYftjjiV49u1oxPbPgTAM/I7yjcwh7g
         6RCJL+OUWLYEb2/z0vPqFmfIm9RBllkKPSvRhLluYyLXNb7sTu0yPmSUATsmrSMbzQmD
         yc8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id r17si80388ilg.4.2020.12.09.01.20.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 01:20:29 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CrWhX0b80z7BM4;
	Wed,  9 Dec 2020 17:19:24 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Wed, 9 Dec 2020
 17:19:48 +0800
From: Wu Bo <wubo40@huawei.com>
To: <linux-scsi@vger.kernel.org>, <open-iscsi@googlegroups.com>
CC: <lduncan@suse.com>, <cleech@redhat.com>, <lutianxiong@huawei.com>,
	<linfeilong@huawei.com>, <liuzhiqiang26@huawei.com>, <wubo40@huawei.com>,
	<haowenchao@huawei.com>
Subject: [bug report] scsi:iscsi:NULL pointer dereference in iscsi_eh_cmd_timed_out function
Date: Wed, 9 Dec 2020 17:40:47 +0800
Message-ID: <1607506847-291724-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as
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

Hi,

When testing kernel 4.18 version, NULL pointer dereference problem occurs
in iscsi_eh_cmd_timed_out function.

I think this bug in the upstream is still exists.

In iscsi_eh_cmd_timed_out(), iscsi_task is protected by session->frwd_lock.
But in following four functions which calling iscsi_free_task(),
sc->SCP.ptr(equal to iscsi_task) is not protected by session->frwd_lock.
So contention window exists between iscsi_eh_cmd_timed_out() 
and iscsi_free_task(), which causes the NULL pointer dereference problem.

  iscsi_complete_task(struct iscsi_task *task, int state)
    -> __iscsi_put_task(task);
	-> iscsi_free_task(task);
	{
		if (sc) {
			/* SCSI eh reuses commands to verify us */
			sc->SCp.ptr = NULL;
			...
		 }
	}

No frwd_lock lock protection before calling iscsi_complete_task:

  1). iscsi_scsi_cmd_rsp
     	-> iscsi_complete_task(task, ISCSI_TASK_COMPLETED);

  2). iscsi_data_in_rsp
        -> iscsi_complete_task(task, ISCSI_TASK_COMPLETED);

  3). iscsi_nop_out_rsp
        -> iscsi_complete_task(task, ISCSI_TASK_COMPLETED);

  4). __iscsi_complete_pdu
	-> iscsi_complete_task(task, ISCSI_TASK_COMPLETED);

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
2062                 if (time_after(running_task->sc->jiffies_at_alloc,  <---
2063                                task->sc->jiffies_at_alloc))
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

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1607506847-291724-1-git-send-email-wubo40%40huawei.com.
