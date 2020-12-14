Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBOOF337AKGQEXQ6CZEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AC42D9DD0
	for <lists+open-iscsi@lfdr.de>; Mon, 14 Dec 2020 18:36:59 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id g12sf3931574oof.19
        for <lists+open-iscsi@lfdr.de>; Mon, 14 Dec 2020 09:36:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607967417; cv=pass;
        d=google.com; s=arc-20160816;
        b=EJOuDGh0Os4CmnU1uJm59I6YrlD9wPk82fxfydz49KAuDEX4bFLjEWOLEXrtDJWcgq
         xBpGzjILTQN1U0qut93m0iDBHe6Rj36IGQVaAUnQwZVUo9OSWijqtkN6xSJZOBW7K3iE
         ek9YeFDBPpN7zDQZgSkh7f0NfoFzNHTkR8Tyn/EeNThEFDE7Xspe2FBSM2AlHcUy9s3K
         cB+2fMZX0DDxdjJWSxp0puJuSrU5ZFhOvfQxfM4tYIMpKVtEK4gZkgNZM6aSpF57z/bK
         KGJ5cSuSJitT7ssjEzguj0cGLD3irvy08HTKSq+mCUTk2csRcEOco8tuB2bFt+0htoG9
         +UAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=ZXb5cr6EP53Iran7yTWFqQb/g4Z01CYzH5CU3Coe10Y=;
        b=BHakCXTiSR/7RPxEeUFzc0rrzLjQ1abDRYvIRDOBZSo6z8srzBD5vWx1Cml4N1TK4U
         LpfPBwk8l/9wPtui1PfwNFT8YJS+oPXWnRA5EvKvLN1wZbxvWLZn/qRXO/YOL6sM3Ho4
         ssdhY4IXVOf7VxzlyOmYxgMO1wEX4agPFv2rH5xhBkC7F05zer9tvTTMcvzkpEsnn3TF
         wGOBnCP7xibAjvlN2Af46+lDK61UBn65quEEPrQu6xljeYrNXlazbqcws/i7zfskXeO9
         t678NUGjA30JBnVqWk2DNv84yaTZzlYrqc9dzgNzsDgY3K6evb3c4EkL5T7a339c7C89
         zQOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=kSX0q27J;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZXb5cr6EP53Iran7yTWFqQb/g4Z01CYzH5CU3Coe10Y=;
        b=EauvQhJgtQWvthIGOA8PzPwXqpOyJhsz28hKzA7CYdFblJ7W9Foh0Y80uj7uvgGFsW
         Y7xb2lnaWa8iFcpqMde5JH4Cw74XM11osAXmNTcdnqRhfwSHZnXBBul4CeVJpt0k8hED
         TZEuIcUK5mPiKgpjWrVWQfQULAoSLLADQTvDuqeReieuD/mxmFU4wUGlQvigsTSWk7Kg
         yt2D9+kwafjCB8Uu83dmNynVI+3sOOBE0rGCMqK4WeKoLgPK+YKhN7N+RYRl8BWLQpU7
         HTEGHHdS3/9yR2QuIK7dTCtHOrRz6k0DZ6dIpKI0y6QZPUDaS/OCvOBN1uLQKgwBwBRL
         oN2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZXb5cr6EP53Iran7yTWFqQb/g4Z01CYzH5CU3Coe10Y=;
        b=Ax9w9327zfIHRrGp/lr3i9keNHv4+ilxiYRlKsRKlax+sXBs7VaiPkVEBJoWPFwa/1
         FvX9UZL8DhOBTSfscwy7Bho5cPqW4pgP+9GyU/dDFfVvOHC50wQmMAT4iVVkhw7SRq4k
         LPvvz6Pe1yqi8dbLF3YNsCZXcwUIde37X3gItQmWj+mgQfkCit281D0XzBJQcvCRaJKp
         MzRYt51xqCfkrlOBmK/dC56XJ/PH6JT2lp7D30iaqsJAL8vxzv6wefHpeU12o0Aa1svm
         E9sLo4oPkpqcot+yUQISxqfONqy4EEDZXDjVn88RodoRrQjZpuA5sCeeHKxu1WJXkgDx
         ERnw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532645IFmTLB6K6J4Czge2UyP222OeDjt7Wob30ovEHCF4d/vWAJ
	1ZsoHVUp2Mx5C8UxprM+TNs=
X-Google-Smtp-Source: ABdhPJzkaMuaftzkvGTyl0lak1EgJ33L5bd4sJMIDHaXjZVNvKYEQjC4KY7KlZWHjtnon/zcxVME1A==
X-Received: by 2002:a9d:69c1:: with SMTP id v1mr21253431oto.128.1607967417707;
        Mon, 14 Dec 2020 09:36:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls4294251oif.11.gmail; Mon, 14
 Dec 2020 09:36:57 -0800 (PST)
X-Received: by 2002:aca:3192:: with SMTP id x140mr19156381oix.172.1607967417222;
        Mon, 14 Dec 2020 09:36:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607967417; cv=none;
        d=google.com; s=arc-20160816;
        b=d95fQUt2sIiu5e7kV+LQ4mmXuv2y9ny0/IkeLaHFbTfzcypEVGZ7lAnoazKs68RGsm
         FD2EBQ7/2kvsmhHQrtoJrXFqrzxNYHVEiekhZbQMYcdQ5JgHTp4DaH2kZD44DbhD4gN7
         zRzld9Gunk1UFsXE4s3aMTuqsERU+UbqTqdggzLcI8VuDfO9zfnNqxfAWhhN4Mt5BwvP
         eKZsi5EsUa5wY3jCCJSh1dXBgvKnTmY+45PUY57JsFAR6kPvuDm1DtEjeBSUNXLFN+S3
         /UMT3f3WW3uEujjKOjCPWo0o1i7XJMWMTbvWsSBh3ifgkMHOlNWfDN5ZSeJxJoxwl4eD
         3cWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HRHsAcy8BkeA7VXzdenFOGTOJJwlYgOlUYUvjlYTFPw=;
        b=jO+X1WXio8AJ2c5YixmIVUjl5CSQivIN+kI6HoqqZrmA/Oy+FTqd9rTG48jGzC1jGA
         ctCc5ysfiLHd5NzPttjvq9GUHTOgcMrapDUSImOJJvgvvzky2OgBIv5PjykchGrxU28k
         ptDQQWilqCTl/nSF5H0MZ9j3u+2TGyt/DsaW7T4g+93VfdkpaxaGjURwC9Lp7ydC/Ole
         Tn7u/oErcPxStNfRKPNb54WrKH2HSkG6kK9l5Uds7CrcNz1dOX0o70+uL5Fjp26mthIR
         6mzvQAHZ6DhX58sr13HJRHtl6nky0ppRzUS/t/eg7bguQbJXfEFauw0q1g6yTs1s2zLy
         aT7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=kSX0q27J;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id e1si1454623oti.2.2020.12.14.09.36.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 09:36:57 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BEHUCtl074973;
	Mon, 14 Dec 2020 17:36:54 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 35cn9r6haj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Dec 2020 17:36:54 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BEHV5RL136122;
	Mon, 14 Dec 2020 17:36:53 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 35e6jpt7y0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Dec 2020 17:36:53 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0BEHapqM003074;
	Mon, 14 Dec 2020 17:36:51 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 14 Dec 2020 09:36:50 -0800
Subject: Re: [RFC PATCH] scsi:libiscsi:Fix possible NULL dereference in
 iscsi_eh_cmd_timed_out
To: Wu Bo <wubo40@huawei.com>, lduncan@suse.com, cleech@redhat.com,
        michaelc@cs.wisc.edu, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, lutianxiong@huawei.com,
        linfeilong@huawei.com, liuzhiqiang26@huawei.com, haowenchao@huawei.com
References: <1607935317-263599-1-git-send-email-wubo40@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <d545b4b0-2c85-8e81-4f78-1d4c6a08c7dd@oracle.com>
Date: Mon, 14 Dec 2020 11:36:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <1607935317-263599-1-git-send-email-wubo40@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9834 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012140119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9834 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 impostorscore=0 lowpriorityscore=0 clxscore=1011 spamscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140119
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=kSX0q27J;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 12/14/20 2:41 AM, Wu Bo wrote:
> When testing kernel 4.18 version, NULL pointer dereference problem occurs
> in iscsi_eh_cmd_timed_out function.
> 
> I think this bug in the upstream is still exists.
> 
> The analysis reasons are as follows:
> 1)  For some reason, I/O command did not complete within 
>     the timeout period. The block layer timer works, 
>     call scsi_times_out() to handle I/O timeout logic. 
>     At the same time the command just completes.
> 
> 2)  scsi_times_out() call iscsi_eh_cmd_timed_out() 
>     to processing timeout logic.  although there is an NULL judgment 
> 	for the task, the task has not been released yet now.    
> 
> 3)  iscsi_complete_task() call __iscsi_put_task(), 
>     The task reference count reaches zero, the conditions for free task 
>     is met, then iscsi_free_task () free the task, 
>     and let sc->SCp.ptr = NULL. After iscsi_eh_cmd_timed_out passes 
>     the task judgment check, there may be NULL dereference scenarios
>     later.
> 	

I have a patch for this I think. This is broken out of patchset I was
trying to fixup the back lock usage for offload drivers, so I have only
compile tested it.

There is another issue where the for lun reset cleanup we could race. The
comments mention suspending the rx side, but we only do that for session level
cleaup.

The basic idea is we don't want to add more frwd lock uses in the completion
patch like in your patch. In these non perf paths, like the tmf/timeout case
we can just take a ref to the cmd so it's not freed from under us.



diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index f9314f1..f07f8c1 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -573,18 +573,9 @@ void iscsi_complete_scsi_task(struct iscsi_task *task,
 static void fail_scsi_task(struct iscsi_task *task, int err)
 {
 	struct iscsi_conn *conn = task->conn;
-	struct scsi_cmnd *sc;
+	struct scsi_cmnd *sc = task->sc;
 	int state;
 
-	/*
-	 * if a command completes and we get a successful tmf response
-	 * we will hit this because the scsi eh abort code does not take
-	 * a ref to the task.
-	 */
-	sc = task->sc;
-	if (!sc)
-		return;
-
 	if (task->state == ISCSI_TASK_PENDING) {
 		/*
 		 * cmd never made it to the xmit thread, so we should not count
@@ -1855,26 +1846,34 @@ static int iscsi_exec_task_mgmt_fn(struct iscsi_conn *conn,
 }
 
 /*
- * Fail commands. session lock held and recv side suspended and xmit
- * thread flushed
+ * Fail commands. session frwd lock held and and xmit thread flushed.
  */
 static void fail_scsi_tasks(struct iscsi_conn *conn, u64 lun, int error)
 {
+	struct iscsi_session *session = conn->session;
 	struct iscsi_task *task;
 	int i;
 
-	for (i = 0; i < conn->session->cmds_max; i++) {
-		task = conn->session->cmds[i];
-		if (!task->sc || task->state == ISCSI_TASK_FREE)
+	for (i = 0; i < session->cmds_max; i++) {
+		spin_lock_bh(&session->back_lock);
+		task = session->cmds[i];
+		if (!task->sc || task->state == ISCSI_TASK_FREE) {
+			spin_unlock_bh(&session->back_lock);
 			continue;
+		}
 
-		if (lun != -1 && lun != task->sc->device->lun)
+		if (lun != -1 && lun != task->sc->device->lun) {
+			spin_unlock_bh(&session->back_lock);
 			continue;
+		}
+		__iscsi_get_task(task);
+		spin_unlock_bh(&session->back_lock);
 
-		ISCSI_DBG_SESSION(conn->session,
+		ISCSI_DBG_SESSION(session,
 				  "failing sc %p itt 0x%x state %d\n",
 				  task->sc, task->itt, task->state);
 		fail_scsi_task(task, error);
+		iscsi_put_task(task);
 	}
 }
 
@@ -1953,6 +1952,7 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 	ISCSI_DBG_EH(session, "scsi cmd %p timedout\n", sc);
 
 	spin_lock_bh(&session->frwd_lock);
+	spin_lock(&session->back_lock);
 	task = (struct iscsi_task *)sc->SCp.ptr;
 	if (!task) {
 		/*
@@ -1960,8 +1960,11 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 		 * so let timeout code complete it now.
 		 */
 		rc = BLK_EH_DONE;
+		spin_unlock(&session->back_lock);
 		goto done;
 	}
+	__iscsi_get_task(task);
+	spin_unlock(&session->back_lock);
 
 	if (session->state != ISCSI_STATE_LOGGED_IN) {
 		/*
@@ -2077,9 +2080,12 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 	rc = BLK_EH_RESET_TIMER;
 
 done:
-	if (task)
-		task->last_timeout = jiffies;
 	spin_unlock_bh(&session->frwd_lock);
+
+	if (task) {
+		task->last_timeout = jiffies;
+		iscsi_put_task(task);
+	}
 	ISCSI_DBG_EH(session, "return %s\n", rc == BLK_EH_RESET_TIMER ?
 		     "timer reset" : "shutdown or nh");
 	return rc;
@@ -2187,15 +2193,20 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 	conn->eh_abort_cnt++;
 	age = session->age;
 
-	task = (struct iscsi_task *)sc->SCp.ptr;
-	ISCSI_DBG_EH(session, "aborting [sc %p itt 0x%x]\n",
-		     sc, task->itt);
-
-	/* task completed before time out */
-	if (!task->sc) {
+	spin_lock(&session->back_lock);
+	task = (struct iscsi_task *)sc->SCp.ptr;	
+	if (!task || !task->sc) {
+		/* task completed before time out */
 		ISCSI_DBG_EH(session, "sc completed while abort in progress\n");
-		goto success;
+
+		spin_unlock(&session->back_lock);
+		spin_unlock_bh(&session->frwd_lock);
+		mutex_unlock(&session->eh_mutex);
+		return SUCCESS;
 	}
+	ISCSI_DBG_EH(session, "aborting [sc %p itt 0x%x]\n", sc, task->itt);
+	__iscsi_get_task(task);
+	spin_unlock(&session->back_lock);
 
 	if (task->state == ISCSI_TASK_PENDING) {
 		fail_scsi_task(task, DID_ABORT);
@@ -2258,6 +2269,8 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 	ISCSI_DBG_EH(session, "abort success [sc %p itt 0x%x]\n",
 		     sc, task->itt);
 	mutex_unlock(&session->eh_mutex);
+
+	iscsi_put_task(task);
 	return SUCCESS;
 
 failed:
@@ -2266,6 +2279,8 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 	ISCSI_DBG_EH(session, "abort failed [sc %p itt 0x%x]\n", sc,
 		     task ? task->itt : 0);
 	mutex_unlock(&session->eh_mutex);
+
+	iscsi_put_task(task);
 	return FAILED;
 }
 EXPORT_SYMBOL_GPL(iscsi_eh_abort);

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d545b4b0-2c85-8e81-4f78-1d4c6a08c7dd%40oracle.com.
