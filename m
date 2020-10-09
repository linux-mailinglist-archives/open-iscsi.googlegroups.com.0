Return-Path: <open-iscsi+bncBC6MFJWO34DBBVVAQD6AKGQECBTJDDQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E88D28836B
	for <lists+open-iscsi@lfdr.de>; Fri,  9 Oct 2020 09:25:11 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id u5sf2713379ljl.16
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Oct 2020 00:25:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602228311; cv=pass;
        d=google.com; s=arc-20160816;
        b=S4a1QwXXdywhmY0RbiLxQPuAxKa9IzlbnEtrINm6JpOOpZZvNzlg0h7+i71IlVv1YX
         ihMxcVcMrviyJjmgcYir1itF7A5XHAJrJut8ya0sdqJxnEkvKFr/PFHkxnrsJVnRvCf2
         mRkgJ1ydmoKYKrWQk/BzoLYR/8jHkCcmHSinbQLxF+6g5G3KjEjX95uesa0x/gKeMzZf
         Coe2EO+UOH4Tsbek0lbC+E3aYVjbqtUpmscxQLGB14oCuz+RMqr1CevyUWEy99cieXeG
         bDrMPSc43Bp7zPvjly4Ci70MoxdwcLnHPbeigEM0btt3FMlO+oU+IwsQC0wQ6no27Mmd
         9Z9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:from:date:message-id
         :sender:dkim-signature;
        bh=lLAob1lKPPlWiK58QpgdGn2r1RrzFZVuvSzm5aPFdao=;
        b=d2mH7xrvACxI12Y6nTgkpS+OdIB/y7Q98on6o615a4s/lS8SEcPLcBL83BbsGJ/UhP
         II63UD6WO5L5yS9B4JjAh3gXO1L9dFovyPafG62oeldQ7TqVfJ9DL6My1bjdwWDjbhXx
         sycDY77zSQOMMLgTOPmf2dNpP0G5fFcmCQTvIoF3NvnLQ/+eEt4VSxjdvCJWh7F8vXt7
         I8sNDjuUNrA9SrvsNyCyARTcT/GiQowg0paHSKabjN7sfHt/FZONIhIlDkCBl7pyzjJ0
         Z74m0J2mLdFKcwAT1xFABT0A2mo5USa57dOvAHzhC0Ax5TCIE5YbjV2GyQngfN61+veZ
         y0PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lLAob1lKPPlWiK58QpgdGn2r1RrzFZVuvSzm5aPFdao=;
        b=eoU/P3VwPUHxF7QqUP7N1uGfQ4XqaOyb2uA++vQdOFsh9xpc9pUcsUivG3dqIBEboN
         QXZuCVcqm7INU2XWuVOTEyeP4Pd3MmFSjzwKiA0JUq2xJBCgUAJDeCOjQp2mky5bOE3X
         o2194hVW9PX22FeoCeWfkj4sOWA5DEJ3zx97RLZ22TXBG16++zFf0Uhhdf16KP9fWM8u
         siP6aQXOqaHkg3pBWDoIrwvc9/zJKdDmovv1glZ6RCjdlZrrrF+gDRak4YNXGbviAkKK
         fVTtpZ8yEblh1LvO+mvBrVF0Cy/UdMS9TENpv4mKy/npKLpPm7Wl2uWmdd9NKWmXfYjh
         MCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lLAob1lKPPlWiK58QpgdGn2r1RrzFZVuvSzm5aPFdao=;
        b=OcmZtG64IPs6XPoTE5CSTPIYtcORpKn//YDzbMjQ2iy9eAf6GFkfCavQj5ftF1gBrg
         1xuzVjBXnvoj5T5efK3t3veXQ90grtCwALpB05ZYGyh2p01JzdrJOJaQlXMNDWqtsK1W
         Nk+Y6wBGMDU5u/ksiPlj/hVRDsm7mKYW1bP8gkznDQ/EMGF59gfGoXYbMfWH+MFoBe59
         Zea+PuGczAcp7lPknZTUrZtJi3ZTNHvbWXEJgoGKlwcL0eNNK51sX0wiY+iP+bcn2Y9X
         Elmy4R2X9nPoxS72TH8EfDE+kZNhgekPY7kKMgosbjjSKv8kguWd78ML6qcs4QpksG58
         p9vg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530tBitw4NkgGTwNPPC7Z2YYGsk41xgpOslmStKSLllHkTVCe+Qb
	rlwv1l+U/C1kYTuRhRDfPMY=
X-Google-Smtp-Source: ABdhPJwYBsy3o4qqb3eM61V/tMI6UbcfX07kPGiJduZWj9fcClwyUMa9mxIP4ag/tzAUCRW2p86pZA==
X-Received: by 2002:ac2:5230:: with SMTP id i16mr3577218lfl.33.1602228310968;
        Fri, 09 Oct 2020 00:25:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:14d:: with SMTP id c13ls1395011ljd.8.gmail; Fri, 09
 Oct 2020 00:25:09 -0700 (PDT)
X-Received: by 2002:a2e:b5d7:: with SMTP id g23mr2323865ljn.61.1602228309876;
        Fri, 09 Oct 2020 00:25:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602228309; cv=none;
        d=google.com; s=arc-20160816;
        b=o3R1yWn3ae4gc0t2bJxOGP9rPKrUM3cB85C2rStP4IQWkBQOXktSz/OeC72mUTn58i
         rdPZr3Lw+eSiZR+gUYDL1h+M/eZROL7tYNx4h6GRzg7Sc1Na4YV6xHQrAngNufIunIhM
         TVxPvexYzFaKM12UWmNBDC9qzrHDoih2rmNzacP9FljzsRIL7plg45XxS5zzO04S4mq5
         C3C11W8D0TIhnQ51PySBsgEHbGo4wKQ728265/6np07fVcEj1knRUAX5hVVP/vHDtjoE
         JmeYkBqhF8vUeE6O/Sj7GEqzIgdGHkj2cw+9pXrQ33n3GJUyCGoORwV7B2uuVEcDWa6y
         gM3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:from:date:message-id;
        bh=US66pFn6BmGXYrNjUuHydxeJh9yYg+cnwq5hsvVQgOg=;
        b=fF8gjji8RwiQFL2vfw6n1DjSFjjHh+x7V/T2Npl+l3AKFq6CGbQfbqQCnFbAe8CIgq
         lJPXQWAZ9QQ+KiGWXHEh7AaIttgwuAwRqi2TshCkDjpONGBvY5M7/LP2bfOMAxNTLKJ/
         uE7FIey0l88H1QHS21NH9yM9DFUiN18Pa28n0+3GB1I+MPfpcLuX+5bkOtfD5sb+ys4e
         JBmhen4A9foxm7Qk7QIrvjwRzCuxtlo7qYBI6jat+nWKSYtYBXYHwacK6tEVixCRL0kh
         L+k7yK8KAWW6ovrWlx8FYaMvoX4C34NxU/kjTn12TR5E0tCK6T8C+nGo+6OPuvlaQ/LM
         2mgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by gmr-mx.google.com with ESMTPS id a1si137363lff.2.2020.10.09.00.25.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 00:25:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 833876000050
	for <open-iscsi@googlegroups.com>; Fri,  9 Oct 2020 09:25:08 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id 5A98A600004D
	for <open-iscsi@googlegroups.com>; Fri,  9 Oct 2020 09:25:08 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 09 Oct 2020 09:25:08 +0200
Message-Id: <5F801050020000A10003BD6F@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Fri, 09 Oct 2020 09:25:04 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Re: [PATCH v2 1/1] scsi: libiscsi: fix NOP race
 condition
References: <cover.1601058301.git.lduncan@suse.com>
 <02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan@suse.com>
 <5e1fb4eb-dd10-dbad-3da9-e8affc4f5cf0@oracle.com>
 <47eca384-b54e-63cc-0f84-7ed6501f427e@oracle.com>
In-Reply-To: <47eca384-b54e-63cc-0f84-7ed6501f427e@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Mike Christie <michael.christie@oracle.com> schrieb am 08.10.2020 um 22:54 in
Nachricht <47eca384-b54e-63cc-0f84-7ed6501f427e@oracle.com>:
> On 10/8/20 12:11 PM, Mike Christie wrote:
>> On 9/25/20 1:41 PM, lduncan@suse.com wrote:
>>> From: Lee Duncan <lduncan@suse.com>
>>>
>>> iSCSI NOPs are sometimes "lost", mistakenly sent to the
>>> user-land iscsid daemon instead of handled in the kernel,
>>> as they should be, resulting in a message from the daemon like:
>>>
>>>> iscsid: Got nop in, but kernel supports nop handling.
>>>
>>> This can occur because of the forward- and back-locks
>>> in the kernel iSCSI code, and the fact that an iSCSI NOP
>>> response can be processed before processing of the NOP send
>>> is complete. This can result in "conn->ping_task" being NULL
>>> in iscsi_nop_out_rsp(), when the pointer is actually in
>>> the process of being set.
>>>
>>> To work around this, we add a new state to the "ping_task"
>>> pointer. In addition to NULL (not assigned) and a pointer
>>> (assigned), we add the state "being set", which is signaled
>>> with an INVALID pointer (using "-1").
>>>
>>> Signed-off-by: Lee Duncan <lduncan@suse.com>
>>> ---
>>>  drivers/scsi/libiscsi.c | 13 ++++++++++---
>>>  include/scsi/libiscsi.h |  3 +++
>>>  2 files changed, 13 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>>> index 1e9c3171fa9f..cade108c33b6 100644
>>> --- a/drivers/scsi/libiscsi.c
>>> +++ b/drivers/scsi/libiscsi.c
>>> @@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct 
> iscsi_hdr *hdr,
>>>  						   task->conn->session->age);
>>>  	}
>>>  
>>> +	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
>>> +		WRITE_ONCE(conn->ping_task, task);
>>> +
>>>  	if (!ihost->workq) {
>>>  		if (iscsi_prep_mgmt_task(conn, task))
>>>  			goto free_task;
>> 
>> I think the API gets a little weird now where in some cases
>> __iscsi_conn_send_pdu checks the opcode to see what type of request
>> it is but above we the caller sets the ping_task.
>> 
>> For login, tmfs and passthrough, we assume the __iscsi_conn_send_pdu
>> has sent or cleaned up everything. I think it might be nicer to just
>> have __iscsi_conn_send_pdu set the ping_task field before doing the
>> xmit/queue call. It would then work similar to the conn->login_task
>> case where that function knows about that special task too.
>> 
>> So in __iscsi_conn_send_pdu add a "if (opcode == ISCSI_OP_NOOP_OUT)",
>> and check if it's a nop we need to track. If so set conn->ping_task.
>> 
> Ignore this. It won't work nicely either. To figure out if the nop is
> our internal transport test ping vs a userspace ping that also needs
> a reply, we would need to do something like you did above so there is
> no point.

I don't know the implementation details, but if ICMP package data would contain some "unlikely" value for iSCSI pings, you could use the packet data to decide. I guess 32 random bits could be "unlikely enough".

> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/47eca384-b54e-63cc-0f84-7ed6501f 
> 427e%40oracle.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5F801050020000A10003BD6F%40gwsmtp.uni-regensburg.de.
