Return-Path: <open-iscsi+bncBCS4D34BZMBBB7MWV6IAMGQEIAXMXOA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA384B6FF2
	for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 16:49:20 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id m3-20020a056e02158300b002b6e3d1f97csf13618684ilu.19
        for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 07:49:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644940159; cv=pass;
        d=google.com; s=arc-20160816;
        b=ocl7WvkIlBv4iGZApRUd3MifzshMgxxkMZZLZK/gbwU6+SUNmL3h4dKPQw3B2WEel3
         pnQUWpGyB3Pyzwggqs5gTt43vTX7EtnAP7NS6N+dZlcHuHNIVaSlr6AmBW4DLmdnbNdE
         bZXmbMSuB+0YUpBhR7Fb5fxXBn9sL5D8yqOdKfqe9lfukvGh3zk16Xu3gRP6EaSpyD5E
         LvW4m2LW1Sg3KIIUe6qpqQaiXvziPPd/X508U231uyu7TuXQshNOZxbggJiyf6TyZV4P
         Xf3ycUFJccTJNJMqsCsglmC/aJZa7OhjqzOG7s6oKQl+n/bHYq8lvEEv5DdrKi6/9t/e
         nULA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:sender:dkim-signature:dkim-signature;
        bh=P5Zk4rWRUgviTmgGK8s4UsGOOGjDSCz+fvwz2jptH6M=;
        b=vxMH7qjaKplyCRTRLxkjf9SWxhw6qs5ackb4A7QuD5EoL/z92Y1glJ7epn/+NZqpKt
         93PbwawG0deMVKiuM03fk9zIbaMDTtiMCiI3wxLWfVX1/va7e8JpHzHMwC4Ioczzq/XU
         BTeMjbmEXLkQXOUKn0f4GcoDmZiODhh/bgc9AYYo+5ORyAjcXp1CCgRzkV2uiVS6+tXG
         n5LQUxgBV9SBGmNrrVvFIqlJDpQfr1sN/56+nLIG5v4IIQSqWSx3LIEGxHdNmvh58BLr
         6hEZo+ot0b3J7qwOD5KWrMr6+TTJOBKpcLro/2ysOxhA2Ao/lYcpHoU3JQwGGF2zznjH
         UNAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="cEUW/9AS";
       spf=pass (google.com: domain of liuzhengyuang521@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P5Zk4rWRUgviTmgGK8s4UsGOOGjDSCz+fvwz2jptH6M=;
        b=rgc+UsB8PR/LqWNyWoP9uNiplyE2frd9gDKrR+KEN1Z8BacgOUl2+rybOSitaPDGyu
         6N9MaORLjkFPdRqz9YvIJrf2kw+MVg5Y3jBaybtvD5vtLXJGK53ooBN12Nm7X6nG7NA2
         yMm4XiE7rVS/G4BBNjboLMtXPNx6a4V/thrnyk5KD8IdPbbKnHHAPxf26j5nCxMnFsPY
         bR5u7N2KFe/+jWL0635Bs3VUjmGrphEz9ERqtIl3KafIAePaHtohMFiNNAyO9LwSCAQI
         bWcJnxsrT8h6gxyDgLf/RlNTPtSNkCfJKm8Bql12goHYhncwc/UzxSr9S+n/MGKez61k
         3BOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=P5Zk4rWRUgviTmgGK8s4UsGOOGjDSCz+fvwz2jptH6M=;
        b=iR0pIeBUmXk2OEbvNXUHtrwxW6NkPFpTvkNnTX44NAnGZf4m1zvIfVT0qw/Uk+yLIi
         39+f2XyT9iihgIunV+qBMJBjiFJjqjkJKEaen+0LujERMJMvGB9qlRg3XEc4cFDtH4o1
         YZtfKNXuAzntL0jVZGIZ6UZYxeleGd33wBk2tfrt/jmbZNGMd0jnZhPy9Uk6avISs4Sw
         XqQ9cGbcmUqfmcg90WQkf9iRwTWPoZe1zOGZ3J+jmPUY/IR1QhtW9NsKyK4euq3hyTwy
         rsc7MU+uOdRJ2ucPLHm9U4jxcLqAIzeLp1jTeU2aO5fBHJxhohhy/FuUBNk8la0d5G/w
         Ao9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P5Zk4rWRUgviTmgGK8s4UsGOOGjDSCz+fvwz2jptH6M=;
        b=Cyjy/tKXmrx8TfFAU8KMtK6f7wRhN7f7lNMz7cNqUDaVPDb62BrCDoRyZnYOif1gdz
         e58v+zd+ZN5ehK9ah0AUXrRElI166scedI5TML53Vg9XnFxod4mIF2HR/2soCFtI4JA2
         RW0CrlApF/Yphmme3zSCShKErqogMi6IMz4U0lCFGG18YR6cQ4WQIg5lk6PtIeWEmet9
         Hxt5jle3TQxF9Y7Mxe5HBf8954MLR+WPkZEyaTuiX6Rph28Od9Zs2iNKSxfxP82yDe2w
         Z9An2lAJtf2h928lCQZNHRRe1qEEWwORdUXcX9P0rCHtTtKayFGIZvkanF4dbpocTm2a
         qN6w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530+d2tdyGIOyKGbuQW2MHvzPlehacRP2lm0i1neH6dTVYl78xXJ
	gjey7cIk7iOYcdPapBPsOWg=
X-Google-Smtp-Source: ABdhPJw2pNvDolufj7hAQcljGoHcMkJLLBnjnvo/rUzmTAZx9UTxkXlVijW7YkOb46c43D5ZHi8Tzw==
X-Received: by 2002:a05:6638:3007:: with SMTP id r7mr3137250jak.280.1644940159298;
        Tue, 15 Feb 2022 07:49:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6638:12c8:: with SMTP id v8ls657261jas.2.gmail; Tue, 15
 Feb 2022 07:49:16 -0800 (PST)
X-Received: by 2002:a05:6638:dce:: with SMTP id m14mr3234769jaj.26.1644940156884;
        Tue, 15 Feb 2022 07:49:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1644940156; cv=none;
        d=google.com; s=arc-20160816;
        b=VLLIk5+4tzeILny/FcLe+k4yAAEaEzdt6eceZIZ70dd1Ladz5SU3M3vk6ZtSYhvutw
         OjAWef091RiB8c/23+0m4ZRP8L6qT8m8bMoCnZDINxrUlHVh2GRYZW9vB/ls5Uc3tTzM
         3c3GG5XymUeY+jv+d3y5aT7kYOgWJmw0G8wCNF5iK1fR4bVkI8eA/BoXiuuNgdOfbo2l
         G8x05bgPBZVX8joBpOWvaJOai3iIhxdZ3E5EZFgMKB5V2E4q37PfeLxpI0C1BCmTH1hj
         A7T8ip8WIiLTV2tRkEywI+vuwPNm+qWaC3LdqiY+0TL88WT4ZbARWIa7dHRtZxgj97f1
         FStA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=PAKLLZo4d0SXE1xp9xl26Jdcj+uTN+GVetCZ7RxOyN4=;
        b=q2FrUQHPmUOPyBjBTIkc2UYiVfytDX+JD3Tup3G6+ezu4Ymc5E8UKZ9+yzsY0SKylf
         gjHJRmsgUstkhrCAjUPN27neQCZ1nziN6V4RjjzdIhnZi6GCfm7Ob+If+HFIy7TJ/OpE
         dxIfbp2cg1AH6RD5vh7LVpW6ipSgtkzPTiBfiZD06icvmIB4pTTS5V8oTtHfp1moOTqM
         bTkuRWKn4DStbr5eV7EYmEVJBl9NydPdWMtGUcA9dN6pUOl0ws358QKIBeO0wK52eAfq
         0GiaOdCMNbUs8Nv2HSeaQU5ryDV97DTgRaLso9/dOF8DiJ3W48OlBdE2m0k9nJA2KgCd
         auvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="cEUW/9AS";
       spf=pass (google.com: domain of liuzhengyuang521@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id d15si4220258jak.1.2022.02.15.07.49.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 07:49:16 -0800 (PST)
Received-SPF: pass (google.com: domain of liuzhengyuang521@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id f13so15122376ilq.5
        for <open-iscsi@googlegroups.com>; Tue, 15 Feb 2022 07:49:16 -0800 (PST)
X-Received: by 2002:a05:6e02:1bed:: with SMTP id y13mr2883374ilv.27.1644940156693;
 Tue, 15 Feb 2022 07:49:16 -0800 (PST)
MIME-Version: 1.0
From: Zhengyuan Liu <liuzhengyuang521@gmail.com>
Date: Tue, 15 Feb 2022 23:49:05 +0800
Message-ID: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
Subject: Question about iscsi session block
To: linux-scsi@vger.kernel.org, open-iscsi <open-iscsi@googlegroups.com>, 
	dm-devel@redhat.com
Cc: lduncan@suse.com, leech@redhat.com, bob.liu@oracle.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: liuzhengyuang521@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="cEUW/9AS";       spf=pass
 (google.com: domain of liuzhengyuang521@gmail.com designates
 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi, all

We have an online server which uses multipath + iscsi to attach storage
from Storage Server. There are two NICs on the server and for each it
carries about 20 iscsi sessions and for each session it includes about 50
 iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block devices
 on the server). The problem is: once a NIC gets faulted, it will take too long
(nearly 80s) for multipath to switch to another good NIC link, because it
needs to block all iscsi devices over that faulted NIC firstly. The callstack is
 shown below:

    void iscsi_block_session(struct iscsi_cls_session *session)
    {
        queue_work(iscsi_eh_timer_workq, &session->block_work);
    }

 __iscsi_block_session() -> scsi_target_block() -> target_block() ->
  device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
 blk_mq_quiesce_queue()>synchronize_rcu()

For all sessions and all devices, it was processed sequentially, and we have
traced that for each synchronize_rcu() call it takes about 80ms, so
the total cost
is about 80s (80ms * 20 * 50). It's so long that the application can't
tolerate and
may interrupt service.

So my question is that can we optimize the procedure to reduce the time cost on
blocking all iscsi devices?  I'm not sure if it is a good idea to increase the
workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.

Thanks in advance.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOOPZo4uNCicVmoHa2za0%3DO1_XiBdtBvTuUzqBTeBc3FmDqEJw%40mail.gmail.com.
