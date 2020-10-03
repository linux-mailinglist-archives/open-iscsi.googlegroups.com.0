Return-Path: <open-iscsi+bncBDLPRE656MLBBMFL4H5QKGQEVDTKYTY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A79202823A8
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Oct 2020 12:42:57 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id a81sf1638807lfd.1
        for <lists+open-iscsi@lfdr.de>; Sat, 03 Oct 2020 03:42:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601721777; cv=pass;
        d=google.com; s=arc-20160816;
        b=TkwuJ55Z/uFEli7vioQbPq9LNkLnIcTG9XrJ2euu5gueVML4qBaXL8hN2cFSezoJoi
         O72vaBKHxHTyPcsWs1wT4nI+vACWP/+kUZLTRSdCxiuQ7e/4paiDITe0T8aCCLipaXoP
         jgbFmrydXe0XfWnvOcXZCJQTwOJYc8J6rhcwliLMwCPeDfYPOTkQpMQWm24qHs4GoxK8
         suAoSFz18/wMbOy74RWXunL0I5ZLOBRUFcNBza9F/c9n/cUQlWYVQJAFNgKFB2Ghx85A
         7Lym7SwF5cgwSch0PSY7gF7O5aFSlSwVMF71xXs60I+V+nK0k88aMx82FIe+muYAuUNe
         2Qkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:autocrypt
         :references:cc:to:subject:from:sender:dkim-signature;
        bh=xc70IkR1c//jX8J8xQGwZwTvdYj5khMuGq8QWOTigrY=;
        b=WZFMAxPwLLW8t21V2Ex0VG9EdtybmpH1kZhHW8YF2opChDciREUUthjDHQKu3KQpZG
         /G3usOqVb6FBBRlqxxClWnonWbzDQy07I1oVYAFdKMxlcHHFtrU1nX99XNl7XX7TfdmM
         YEEHX0EhCXIgpSCCB4zNUK1HioRRwfq0h9DSgqpJcqfur4Pr8GptVIQvg/V7uYI2sOCy
         eBxEBWlhULFbAl08fFtPtmxNLl6oOadsdASEogzsdrfDZk97BJ+JCL38M4dK75nR/xYp
         IBlRb3d8W8bGFtbTlcyKvGJE+zj6VqsKdRnE95wYq00QGgunt9JKySZiMk0wjSC1fCvZ
         MnYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:references:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xc70IkR1c//jX8J8xQGwZwTvdYj5khMuGq8QWOTigrY=;
        b=mcu+K39bJEcLkyKgZ8sggjrE3cz5tk7cB/G9F76nfoqEV4fAhLWDXQAjI6gbWFKSlm
         FIBjayZjrSUREGWKq/ZH/4lKAcS0NB3KBtWrVJO57dNC+rroeuqYmWMkEJN1jIfmnKKh
         /uRFVc66h2X+httrmx9rD3ZYR2jCxbHpVK76lxFPwOVRj4zkksdxlrJfe0dNqSMRUR9O
         Pu48r/dyrJBFR3/4nQj24wpCKf3AxLZogSsbGfCL5KQuv75Yvf48FzFI7M5+KcJiwY8L
         cZwgv3hGiObh2tLTb7k9TQS5hug2lyJFDiWpVOKj1rQZdKb9wA+RyeYZuqheEWF1KSUF
         7qDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xc70IkR1c//jX8J8xQGwZwTvdYj5khMuGq8QWOTigrY=;
        b=j3alw7FaIOoeWrw5ydqFwGym3DYRkrHva0XU1ohpE8qXuKHKUxCnmfSdH6EuLEXmva
         NqKz+RfLs3t5sFcpcjMO9tMBZyiBB4WleQ+/80Ugc3rTw1xOaHVq7LSUeFG7cuE6eAVJ
         nR1G6793vwaWDcsQn7YBEsPuT1WfpMlFjZnAN0Vcme5DrE/OVyH/0jUYvrcIch3NfRv6
         oMSykPt6Omy/m2iQZflGkhmv+hbuOZlXskPzBr4o9kdgbdR4ecJRBxeKBTtGKNIkF17W
         XAwTkJxQ66GecGRV5DI86YK41U3gV87zZ0ruHPq3DT0ivfvYgIMbLVJY+qHSrx2oe11A
         DoBQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532krAivcbBtHQ6jEHFCvfZH1dD5ylzle/Dkh0tepobDopE4nHc4
	RyW7nq96wgqW7QiO3BTVKHk=
X-Google-Smtp-Source: ABdhPJxgCsAHGo6Mz8N6ZgpRteDRQxDkTNhaUl96/x/tWZrWW0sDcux0BJIXtdZeLkrSUfie1xMZRg==
X-Received: by 2002:a05:651c:111:: with SMTP id a17mr2006463ljb.240.1601721777142;
        Sat, 03 Oct 2020 03:42:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:86c8:: with SMTP id n8ls508275ljj.1.gmail; Sat, 03 Oct
 2020 03:42:55 -0700 (PDT)
X-Received: by 2002:a2e:3619:: with SMTP id d25mr1910310lja.369.1601721775919;
        Sat, 03 Oct 2020 03:42:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601721775; cv=none;
        d=google.com; s=arc-20160816;
        b=N6NKxG8V8Y84raaTmJZo5LoBLETwU5FcJ+Nv1muNgF1SqeXzb/b1+6svLzscftvI0O
         KViextnevl5qBlnSgRJBBQdnGrq2xTPmoUElmNTIdzQeywrYUa98s3lbR6uRQcvKGYZM
         +8gsedF5r8GlGaXKxVYT5isk+c/6eFJ+tNei6EXqFXKn6Vl093Mt+d0JUH1sk02b8GEG
         jUB747B/Lr8AgikxD/AXHHSQfYLv1xtrrrKKF01B5TfjeuWs3XBE0kZwtsQa66XlYwKR
         WvkjOd9OWFFOTT/ON4Qt/7EMwvBtEAMhuNAxmENYnc2S/igC/lEsRCW0z8Mar5D+iNqF
         yJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:references:cc:to:subject:from;
        bh=wZyGK9b2eGTL4YQCmiMk1cgxzsVxV0pW43YPL73i5yk=;
        b=vBT+hjgBPZldCyPVrXLdwIMzfN/IOxSjta1pvIjkniXi6N9avfMdheOEsumuOusNFG
         sAkHt3cw0Y/MhJZ2ZH3VPFRQATIIQkafmEKFb5+jCPErGGcO5mRMaPM5jR1U1vCx95Nc
         9Z5119YACjulh0vXXzehHuOPEZZBiZe+o9HhNF8En0vBFLy017iesZaZDcw6GPHsyRp+
         vOvDVzzDyRjxlNbUjGtBRgaA6BQLm97R1AfGGHD67pj5cKbaGDfkRKaq1Al3RonVwIGY
         fdGzSokm6O2J9AvkycsPUZP3f1Z81VGT2Mfh6AA56KKdUhYTCUra3o6xNGwzmDFoGNOL
         vzrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id r13si67616ljm.3.2020.10.03.03.42.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2020 03:42:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 12058B2B6;
	Sat,  3 Oct 2020 10:42:55 +0000 (UTC)
From: Coly Li <colyli@suse.de>
Subject: ...
To: David Miller <davem@davemloft.net>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, chaitanya.kulkarni@wdc.com, cleech@redhat.com,
 hch@lst.de, amwang@redhat.com, eric.dumazet@gmail.com, hare@suse.de,
 idryomov@gmail.com, jack@suse.com, jlayton@kernel.org, axboe@kernel.dk,
 lduncan@suse.com, michaelc@cs.wisc.edu, mskorzhinskiy@solarflare.com,
 philipp.reisner@linbit.com, sagi@grimberg.me, vvs@virtuozzo.com,
 vbabka@suse.com
References: <20201002082734.13925-1-colyli@suse.de>
 <20201002.152829.1002796270145913943.davem@davemloft.net>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Message-ID: <7dcb7b57-9313-0a78-0bf1-be799c0efa52@suse.de>
Date: Sat, 3 Oct 2020 18:42:45 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201002.152829.1002796270145913943.davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

On 2020/10/3 06:28, David Miller wrote:
> From: Coly Li <colyli@suse.de>
> Date: Fri,  2 Oct 2020 16:27:27 +0800
> 
>> As Sagi Grimberg suggested, the original fix is refind to a more common
>> inline routine:
>>     static inline bool sendpage_ok(struct page *page)
>>     {
>>         return  (!PageSlab(page) && page_count(page) >= 1);
>>     }
>> If sendpage_ok() returns true, the checking page can be handled by the
>> concrete zero-copy sendpage method in network layer.
> 
> Series applied.
> 
>> The v10 series has 7 patches, fixes a WARN_ONCE() usage from v9 series,
>  ...
> 
> I still haven't heard from you how such a fundamental build failure
> was even possible.
> 

Hi David,

Here is the detail steps how I leaked this uncompleted patch to you,
1) Add WARN_ONCE() as WARN_ON() to kernel_sendpage(). Maybe I was still
hesitating when I typed WARN_ONCE() on keyboard.
2) Generate the patches, prepare to post
3) Hmm, compiling failed, oh it is WARN_ONCE(). Yeah, WARN_ONCE() might
be more informative and better.
4) Modify to use WARN_ONCE() and compile and try, looks fine.
5) Re-generate the patches to overwrite the previous ones.
6) Post the patches.

The missing part was, before I post the patches, I should do rebase and
commit the change, but (interrupted by other stuffs) it skipped in my
mind. Although I regenerated the series but the change was not included.
The result was, uncompleted patch posted and the second-half change
still stayed in my local file.


> If the v9 patch series did not even compile, how in the world did you
> perform functional testing of these changes?
> 

Only 0002-net-add-WARN_ONCE-in-kernel_sendpage-for-improper-ze.patch was
tested in v9 series, other tests were done in previous versions.

> Please explain this to me, instead of just quietly fixing it and
> posting an updated series.


And not all the patches in the series were tested. Here is the testing
coverage of the series:

The following ones were tested and verified to break nothing and avoid
the mm corruption and panic,
0001-net-introduce-helper-sendpage_ok-in-include-linux-ne.patch
0002-net-add-WARN_ONCE-in-kernel_sendpage-for-improper-ze.patch
0003-nvme-tcp-check-page-by-sendpage_ok-before-calling-ke.patch
0006-scsi-libiscsi-use-sendpage_ok-in-iscsi_tcp_segment_m.patch

The following ones were not tested, due to complicated environment setup,
0005-drbd-code-cleanup-by-using-sendpage_ok-to-check-page.patch
0007-libceph-use-sendpage_ok-in-ceph_tcp_sendpage.patch

This patch I didn't explicitly test, due to lack of knowledge to modify
network code to trigger a buggy condition. It just went with other
tested patches,
0004-tcp-use-sendpage_ok-to-detect-misused-.sendpage.patch


Back to the built failure, I don't have excuse for leaking this
uncompleted version to you. Of cause I will try to avoid to
inefficiently occupy maintainer's time by such silly mess up.

Thanks for your review and the thorough maintenance.

Coly Li


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/7dcb7b57-9313-0a78-0bf1-be799c0efa52%40suse.de.
