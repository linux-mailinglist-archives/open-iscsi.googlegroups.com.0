Return-Path: <open-iscsi+bncBAABB47J4LUQKGQEBNZUTJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC7E739C8
	for <lists+open-iscsi@lfdr.de>; Wed, 24 Jul 2019 21:43:48 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id t196sf40355116qke.0
        for <lists+open-iscsi@lfdr.de>; Wed, 24 Jul 2019 12:43:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563997427; cv=pass;
        d=google.com; s=arc-20160816;
        b=BrAptHPHbraXvQNZvHmrVCPnwJsgoWkbaAHKFM3zx9sSOH5qN2EkbPkin0AyYYxnAn
         vHO/dTGdBDyi6eSMA2hs9JP162n2SO/aKZdTlW/TECHCVyaHc1B9r+ZcMhZKIFt7MEPn
         PK+pVzcsWlB+VTDMxkIEw52S83gIEwVlSAY0dBU3CRvLk5tXhygukEmlKTFzM+9Z/bZY
         cEM59D2LTNqHcvHWssW5Es3NNvGmxuczcq4p+/f9efOlE631+lQ9/M1PLpyfho6VSqpC
         vrDo8k+YapMbdPK18F+3+OITc+TVZ3tF2pf3tmgNVuiyCMVdNCy+tRXgkO7IEIITp25f
         lPIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=gAu5/PhmjDPm1p+Q8zd8ygIVBLVPQEhNznd449xjwOA=;
        b=cwpo50EpVOzSIhZornKQNZEknOEwJOvnFqTAlSu+eyBFKe1SJ3PSLB2lL6XIAuTEOZ
         CXXJHRoRMhFi2S9OXki0DDYqBpjw+MtRvTUafhif6CugqxucsUsv5uEpNMaIjHblQC5x
         UFx+OgXhiZhatd94qUeCfUKQEsb1BtP+7H72l4vZCONmUURQmGDpff/mg3Fhfo/r3vcu
         dE3sXrStIRx60mSYTk7X4veWKznwCfUPNV3gWkpN0JGEHS57nz+QuXCpkvHUhD02casQ
         CwW2N8QtKM6kH3zrhMC5ISJNgo2lNbIbjtTY6TZNvmN410ItlR0um2K8j97m0RFlor6c
         4ROg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gAu5/PhmjDPm1p+Q8zd8ygIVBLVPQEhNznd449xjwOA=;
        b=VL9AR0CjFfppqIFRAEG2xWpcq4legYbx0+xrSn5AxZBjYngUUNWjY40bgI9+duuyaY
         rrJybgnXYIYBIoTjC7972LMWkLthnkby6K+IUQT/id/bjgTQIUQdCOEPdStSSfKo2WVH
         tCHFba2FlY+raHwdUriIIJCWVgD3Zzxk0P7xGcbVvXimtYBE/+wb1K3GH4XfkAuaev0J
         Hdq5mVg3NSGstjDoNPyYLWR2GXQKKSp4fQiRwVaVGRxDB3gRx4Yb6lQKNZ66+i8ZeSoD
         QupDDMJHPGnh+FKO/gMcm8VQnJWBWO+nM/kRwocmCriwo7uRSAO01dy3sh4nEMgnKzuu
         YJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gAu5/PhmjDPm1p+Q8zd8ygIVBLVPQEhNznd449xjwOA=;
        b=NlsQ5XX22CXOi0iIceA8rKmPkDBVrLM3v8KQRrd8jOXDMl3yCFv4c8SAGFEVKeNidg
         5+8GRn73l+BL1OYCm5sbc5HEnYDN7oU3Ke7YoSNOxCwPwNTPtuNM/feGIEKLTc833oAq
         L4E7rShJQEqQucib+5fCnRhYupEKqNkdKHqY9MValMA8FFYt6Z3NYBXg10Xd8NOFBZBv
         V1RHbQf7BgzbaQVS4sW/P6rq04X/9gzntY7Fk79zrYfV63vwZqNKkc7xPS2WoBuVi3FL
         JJSzhkGnm+exlpsu4ZtjVGEfyjc2T3/+2UDg7re+wlijJ/u01RfWSLJK67+oCAmAXI8Y
         p+uA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX6aEZ0hgihiticofGDy2cEoBTpBJGzjpMyvLal7SLfd4WquSuF
	I7kYGUFa+ks/SnTZ52zClG0=
X-Google-Smtp-Source: APXvYqyEYYVChxT3AbE6F7RndxPOPCoQaEki0QD+wUAx5uBV3CW9TZbwbSTWyiBtCIhv95MChX/CYQ==
X-Received: by 2002:a0c:b4ab:: with SMTP id c43mr58640625qve.157.1563997427351;
        Wed, 24 Jul 2019 12:43:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:7906:: with SMTP id u6ls14312205qkc.11.gmail; Wed, 24
 Jul 2019 12:43:47 -0700 (PDT)
X-Received: by 2002:a37:aa06:: with SMTP id t6mr55372258qke.226.1563997427194;
        Wed, 24 Jul 2019 12:43:47 -0700 (PDT)
Received: by 2002:ae9:e016:0:0:0:0:0 with SMTP id m22msqkk;
        Wed, 24 Jul 2019 11:00:34 -0700 (PDT)
X-Received: by 2002:aed:2fa7:: with SMTP id m36mr60083017qtd.344.1563991234440;
        Wed, 24 Jul 2019 11:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563991234; cv=none;
        d=google.com; s=arc-20160816;
        b=SSR9FdXvEF5HUszgbEROiKkFhPZf3WD66S6+FswKBvRz+RpPCSzQYSONbqq6tHWVq1
         pCTWI8anKQyk7giWB3TWYvMpjKSI6hzKKu+CiiUegRp90L/814afFv4ATtSE96kj3S02
         I4rlsOQyFYVKm+eqM+zzrz9Hya+Dbcn7XmLELu5Rfqb6OeiZHXhdkvKXN3AO7MrQuC2d
         H1G3q1KwFe7W2wfcvCI9+VyzfG1bnm7iodc8fP0dYzt0HKP5Bf624swZhmgY1KaNqrlL
         9tR53ZY/pZ9wXwpF49QqEKhPilVhSD0hpuPAiHFo3MxifV1Thlg3ZD5U6JQe5u0Eqmf8
         Cg4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=UhcLZPKwWfXFKkgKkB2GVauskr6hGHuy1hT0KxtQpv0=;
        b=K4blo6EvIjnUPHE62+/gSTyqFv8cpWNWQFhCcGPa8xPLENDfgqy5x/rVLaYS39Ebq5
         Y+RIx0mMBXTP8IfbxQBj6Q28qiBdIngxFrvEZ2xBn0eRLVnntcp7T3WGexQj7kZOS6lv
         RA0YxlfHvn+9IUnybdUKWG4OZCd0A4EsJeRoyXd8MGplE5C0R34ob69XPmk6pOO6mDSu
         GxvVBb8vHJwKFGKOb+API8KwFW+QpjBAPavcxJUzadmhyCDmTUQr3r2RAE3AaOWzd5Xt
         mPoidLtxu7pLDviL9+ER+hfTb8mGG9UNO/TGlLMfZfSkpbgvZFIbIRPNlujgMpAhicAH
         /dJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id 34si2170052qtz.2.2019.07.24.11.00.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 11:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 97A42B773FAD552DCFCF;
	Thu, 25 Jul 2019 02:00:31 +0800 (CST)
Received: from huawei.com (10.184.191.68) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Thu, 25 Jul 2019
 02:00:25 +0800
From: Biaoxiang Ye <yebiaoxiang@huawei.com>
To: <tj@kernel.org>, <lduncan@suse.com>
CC: <jiangshanlai@gmail.com>, <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, <jiangyiwen@huawei.com>,
	<xiexiangyou@huawei.com>
Subject: [RFC PATCH 1/2] workqueue: implement NUMA affinity for single thread workqueue
Date: Wed, 24 Jul 2019 17:59:39 +0000
Message-ID: <1563991180-11532-2-git-send-email-yebiaoxiang@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
References: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.184.191.68]
X-CFilter-Loop: Reflected
X-Original-Sender: yebiaoxiang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Currently, single thread workqueue only have single pwq, all of
works are queued the same workerpool. This is not optimal on
NUMA machines, will cause workers jump around across node.

This patch add a new wq flags __WQ_DYNAMIC, and a new macros
create_singlethread_dynamic_workqueue, this new kind of
single thread workqueue creates a separate pwq covering the
intersecting CPUS for each NUMA node which has online CPUS
in @attrs->cpumask instead of mapping all entries of numa_pwq_tbl[]
to the same pwq. After this, we can specify the @cpu of
queue_work_on, so the work can be executed on the same NUMA
node of the specified @cpu.

Signed-off-by: Biaoxiang Ye <yebiaoxiang@huawei.com>
---
 include/linux/workqueue.h |  7 +++++++
 kernel/workqueue.c        | 40 ++++++++++++++++++++++++++++++++++------
 2 files changed, 41 insertions(+), 6 deletions(-)

diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
index b7c585b..b2e8121 100644
--- a/include/linux/workqueue.h
+++ b/include/linux/workqueue.h
@@ -106,6 +106,7 @@ struct work_struct {
 #ifdef CONFIG_LOCKDEP
 	struct lockdep_map lockdep_map;
 #endif
+	int intimate_cpu;
 };
 
 #define WORK_DATA_INIT()	ATOMIC_LONG_INIT((unsigned long)WORK_STRUCT_NO_POOL)
@@ -235,6 +236,7 @@ static inline void destroy_delayed_work_on_stack(struct delayed_work *work) { }
 		lockdep_init_map(&(_work)->lockdep_map, "(work_completion)"#_work, &__key, 0); \
 		INIT_LIST_HEAD(&(_work)->entry);			\
 		(_work)->func = (_func);				\
+		(_work)->intimate_cpu = -1;			\
 	} while (0)
 #else
 #define __INIT_WORK(_work, _func, _onstack)				\
@@ -243,6 +245,7 @@ static inline void destroy_delayed_work_on_stack(struct delayed_work *work) { }
 		(_work)->data = (atomic_long_t) WORK_DATA_INIT();	\
 		INIT_LIST_HEAD(&(_work)->entry);			\
 		(_work)->func = (_func);				\
+		(_work)->intimate_cpu = -1;			\
 	} while (0)
 #endif
 
@@ -344,6 +347,7 @@ enum {
 	__WQ_ORDERED		= 1 << 17, /* internal: workqueue is ordered */
 	__WQ_LEGACY		= 1 << 18, /* internal: create*_workqueue() */
 	__WQ_ORDERED_EXPLICIT	= 1 << 19, /* internal: alloc_ordered_workqueue() */
+	__WQ_DYNAMIC		= 1 << 20, /* internal: workqueue is dynamic  */
 
 	WQ_MAX_ACTIVE		= 512,	  /* I like 512, better ideas? */
 	WQ_MAX_UNBOUND_PER_CPU	= 4,	  /* 4 * #cpus for unbound wq */
@@ -432,6 +436,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
 			WQ_MEM_RECLAIM, 1, (name))
 #define create_singlethread_workqueue(name)				\
 	alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM, name)
+#define create_singlethread_dynamic_workqueue(name)     \
+	alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM| \
+			__WQ_DYNAMIC, name)
 
 extern void destroy_workqueue(struct workqueue_struct *wq);
 
diff --git a/kernel/workqueue.c b/kernel/workqueue.c
index 601d611..418081c 100644
--- a/kernel/workqueue.c
+++ b/kernel/workqueue.c
@@ -1395,8 +1395,11 @@ static void __queue_work(int cpu, struct workqueue_struct *wq,
 			 struct work_struct *work)
 {
 	struct pool_workqueue *pwq;
+	struct pool_workqueue *last_pwq;
 	struct worker_pool *last_pool;
 	struct list_head *worklist;
+	struct work_struct *work_tmp;
+	bool pending = false;    /* is work pending in last worker pool */
 	unsigned int work_flags;
 	unsigned int req_cpu = cpu;
 
@@ -1441,7 +1444,27 @@ static void __queue_work(int cpu, struct workqueue_struct *wq,
 		if (worker && worker->current_pwq->wq == wq) {
 			pwq = worker->current_pwq;
 		} else {
-			/* meh... not running there, queue here */
+			/*
+			 * meh... not running there, queue here
+			 * we can't break the ordering guarantee of dynamic single thread wq,
+			 * so have to check whethere the work are still pending in last pool or not.
+			 */
+			if (wq->flags & __WQ_DYNAMIC) {
+				list_for_each_entry(work_tmp, &last_pool->worklist, entry) {
+					if (work_tmp == work) {
+						pending = true;
+						break;
+					}
+				}
+				if (pending) {
+					last_pwq = get_work_pwq(work);
+					if (likely(last_pwq))
+						pwq = last_pwq;
+					else    /* queue here */
+						pr_warn("workqueue: work pending in last pool, "
+								"but can't get pwq.\n");
+				}
+			}
 			spin_unlock(&last_pool->lock);
 			spin_lock(&pwq->pool->lock);
 		}
@@ -3906,6 +3929,9 @@ static void apply_wqattrs_cleanup(struct apply_wqattrs_ctx *ctx)
 	 * wq_unbound_cpumask, we fallback to the wq_unbound_cpumask.
 	 */
 	copy_workqueue_attrs(new_attrs, attrs);
+	if (wq->flags & __WQ_DYNAMIC)
+		new_attrs->no_numa = false;
+
 	cpumask_and(new_attrs->cpumask, new_attrs->cpumask, wq_unbound_cpumask);
 	if (unlikely(cpumask_empty(new_attrs->cpumask)))
 		cpumask_copy(new_attrs->cpumask, wq_unbound_cpumask);
@@ -4154,10 +4180,12 @@ static int alloc_and_link_pwqs(struct workqueue_struct *wq)
 		return 0;
 	} else if (wq->flags & __WQ_ORDERED) {
 		ret = apply_workqueue_attrs(wq, ordered_wq_attrs[highpri]);
-		/* there should only be single pwq for ordering guarantee */
-		WARN(!ret && (wq->pwqs.next != &wq->dfl_pwq->pwqs_node ||
-			      wq->pwqs.prev != &wq->dfl_pwq->pwqs_node),
-		     "ordering guarantee broken for workqueue %s\n", wq->name);
+		if (!(wq->flags & __WQ_DYNAMIC)) {
+			/* there should only be single pwq for ordering guarantee */
+			WARN(!ret && (wq->pwqs.next != &wq->dfl_pwq->pwqs_node ||
+					wq->pwqs.prev != &wq->dfl_pwq->pwqs_node),
+					"ordering guarantee broken for workqueue %s\n", wq->name);
+		}
 		return ret;
 	} else {
 		return apply_workqueue_attrs(wq, unbound_std_wq_attrs[highpri]);
@@ -5217,7 +5245,7 @@ static int workqueue_apply_unbound_cpumask(void)
 		if (!(wq->flags & WQ_UNBOUND))
 			continue;
 		/* creating multiple pwqs breaks ordering guarantee */
-		if (wq->flags & __WQ_ORDERED)
+		if ((wq->flags & __WQ_ORDERED) && !(wq->flags & __WQ_DYNAMIC))
 			continue;
 
 		ctx = apply_wqattrs_prepare(wq, wq->unbound_attrs);
-- 
1.8.3.1


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1563991180-11532-2-git-send-email-yebiaoxiang%40huawei.com.
