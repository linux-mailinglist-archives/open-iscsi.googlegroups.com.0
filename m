Return-Path: <open-iscsi+bncBDO7B5X3UIBBBQEZWXXAKGQEDWQH7RQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CDBFC67F
	for <lists+open-iscsi@lfdr.de>; Thu, 14 Nov 2019 13:46:58 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id k7sf4470880pgq.10
        for <lists+open-iscsi@lfdr.de>; Thu, 14 Nov 2019 04:46:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573735617; cv=pass;
        d=google.com; s=arc-20160816;
        b=ipUbkgLOFrAEXGHDtp7qZWzAIhsl8rqK5PF34cV6G37WeqqSmAaYw9dwpfYJLnqDjd
         L+zHDPz0QQCtBLb4elw1tJDuZcpRT9zqS601dO+lnTLSa9yYjbxq0AODwwLQSpejtKF1
         rXsz2H6uebXFGxtlebwqCSQeFGKo9Zv8J+XmldsxhgBaN8GWCLvK6iEBZ+rAUV/t/6vo
         m35o6Keitxw60INHRIJHpJn4LgcvNi85J0HUwGmpnfBcRh7t+wdUghNZayU2zwoD3SwC
         LGfPT1BxthTNQVbn6KtMXWisnzRINpcbMbp4D+YP84sK3uVgGgO7PoqA6coVoFd8pPDI
         oKjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=nm+huZVuzy+yBPcyv49sfUwOAuwuc1DksdffMwGzpFQ=;
        b=Em7ABk5UkJRlGXAWrlkz/P2uSV9oyGWeBkb2FqePeC3rCHMYfsJfzmgrxhfIJyjfKx
         qeBQofa/kfrLBa6dlXu3YMIn1pCVrqIutIyZJHftK6xY7ISTAcLdTQo6gSi4+fdGlJmn
         GqPFuXI7iMRjmSRNKnmSMBSruDfY92NZlcyyYL9cBWc9wkFPM/hsh0tyd15Vsi8C2HXP
         wdSpqPt2zrU8KejXxkrBJMwDwt/njEwMKCSOiswfp/q6Q+tDkzc1RRlm+V1l92oGAsGk
         t+g8VdPx7qlSDNZJL2e1xU7vh+nx6h6ozgP5RXn7BXWY5t5U3ytSCed3r6ZVg19a6Guf
         g4cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nm+huZVuzy+yBPcyv49sfUwOAuwuc1DksdffMwGzpFQ=;
        b=cwr/b+Pm7fdM70+xvQWT9HcIKKnscF4IQxwh3Ryld2HPiLY7s1nopEHASewEVFWseL
         nPjJ9gAQHCMaq/zdC4t0Wv5Nui3t8PK6tS1SrgwqcBISk1bqDS9fiEbGasj7YCFbV1/T
         OhHLkX22+uXqi4b8kqqak1eA6DIuLMSSUcz8Zn4lvOkDtskznaLbhj958DSEeYZsgR41
         0lzXlAGwfBBCGWkb2HxoyxVSDx8pT8k89Vk+dzA808gCME3Hd6yrKxl2B58Xz2QuONAB
         lgq15UjlbN00kXiYSdIATgrAOgUVERkVzpW+nv91i15aC4FSiTfWxB67mY1vToqsY1r1
         PkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nm+huZVuzy+yBPcyv49sfUwOAuwuc1DksdffMwGzpFQ=;
        b=VNDlXT0EAGyiYWyhnz4n2z3WTwTj4GUb/Wqod6qkDzDYAC62+irkSBUYbHzTs51/Gz
         wLcnNTq7dahmryhIrxJI9peh2OeSqassap3wu3o4RSVBebGG6cTJJNo7/aY+a17HtcGy
         z2jzGJXND2c7BCVdizLA+7MbzZPBCHKa5/xWzrX0Wdbke0mG34n4zSGrrw7OmnvoZ1a+
         fYODQ6TloMjm2JiVCCFzx0Z6bRSLhf7No1RcYZsCVLfSChlVlwmb9louFMkvh0QJ4yl6
         YzYd0QfVoWierWofQbI9d1slc67k6DeVQZIuvDi6t+HEcvLV9cqxpVR+fBF/TZP9ywT2
         8iiw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWYcVA/rZL5lvyJjTiiMtNv5PN1WioWI2FfWAOpsnB33Yw2au0s
	wr4oxanI6f8iF29pAUnAov4=
X-Google-Smtp-Source: APXvYqyfDjWQV4tEbAuBdxodNHOfkKsNZC+UWaj/Hxq3CDON2ZSSl5vyR4NaS7Z73yE62tlXZN0UnQ==
X-Received: by 2002:a17:90a:7bcc:: with SMTP id d12mr12226850pjl.63.1573735616733;
        Thu, 14 Nov 2019 04:46:56 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:a70b:: with SMTP id w11ls697321plq.3.gmail; Thu, 14
 Nov 2019 04:46:56 -0800 (PST)
X-Received: by 2002:a17:902:409:: with SMTP id 9mr9803914ple.25.1573735616254;
        Thu, 14 Nov 2019 04:46:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573735616; cv=none;
        d=google.com; s=arc-20160816;
        b=RQHWaULpm2em/IY+GSuLqmIgiabYGhmYRrM/DsxWs6Sa5vvIKbEae8YL4qwr2rXwl/
         YAcrkOAauubBYaNZORHVmCDLoDd6dmPOLKXQxLOwPJfyMv/isc1WNDpjd0d+IG6u1wUY
         VZzhHvGHxegQQQMGag+i3KoYxKLTJHDZ1ZTcW6zPkJp8kjzr1rBjtWZt9d9S5lQJSfO+
         D4nz2bcyZTqHbF5rEZXmY9W3uEUNbIHdqHWBbJZUXyIFD+PJX1CkJXcl0JSmWNENPOLM
         T/Yw0587mQuVIkUGNULaZ2Acfbqe9GF2g53atqYCA66Hq4MzyYTjmfLh/iQocFIFz0Ia
         r9ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=6Ox1niW3YyHa2MoMi6oCYFNrneqbHVjs5GFe96wcttI=;
        b=iaMnBUo7p+MA43RXINbwEPQwNcAVszNRqc68kGCRKRH8cgFsgfhK9eM2co5ANntKd0
         wrMkU+GMDcJY/RVPcqOdDWXFK9znTInWn5yC5rfV8h3AVrmgvkYLOKH1zYcLbJIg9kL8
         +A4dY3BsKF388plQLNwxiXcD3QWwpIpUHtkIO3V1wrNxIJdPR7TqPFHgE8/8GAMvJRNg
         0cu5hhUPgvEJFSC9eJHxLFfQG7xcyS0PYzx8joF3bPbn2QWmDGYowEpXpHj6iTtdRecm
         CqinQORU9oaHxytZHbcQHac1xxD4/1sEEbnEsTwAj6aZ6y/ujuAzPISnvfK/ceF5tSoy
         Dbww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id n10si310142pjp.0.2019.11.14.04.46.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Nov 2019 04:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggeml406-hub.china.huawei.com (unknown [172.30.72.55])
	by Forcepoint Email with ESMTP id 76393CEB6D434285D970;
	Thu, 14 Nov 2019 20:46:54 +0800 (CST)
Received: from DGGEML505-MBS.china.huawei.com ([169.254.11.138]) by
 dggeml406-hub.china.huawei.com ([10.3.17.50]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 20:46:45 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: Lee Duncan <LDuncan@suse.com>, "Martin K. Petersen"
	<martin.petersen@oracle.com>
CC: "cleech@redhat.com" <cleech@redhat.com>, "jejb@linux.ibm.com"
	<jejb@linux.ibm.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>, Mingfangsen <mingfangsen@huawei.com>,
	"liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
Subject: RE: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Topic: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Index: AdWa5/1WRcCg2Y9dT3SFjNDUgEm04Q==
Date: Thu, 14 Nov 2019 12:46:44 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E28CFE@dggeml505-mbs.china.huawei.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.221.252]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.188 as
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

> On 11/12/19 5:37 PM, Martin K. Petersen wrote:
> >
> >> In iscsi_if_rx func, after receiving one request through
> >> iscsi_if_recv_msg func, iscsi_if_send_reply will be called to try to
> >> reply the request in do-loop. If the return of iscsi_if_send_reply
> >> func return -EAGAIN all the time, one deadloop will occur.
> >>
> >> For example, a client only send msg without calling recvmsg func,
> >> then it will result in the watchdog soft lockup.
> >> The details are given as follows,
> >
> > Lee/Chris/Ulrich: Please review!
> >
> 
> 
> Okay, after looking again at the thread, I do have some additional feedback for
> the patch submitter.
> 
> You should put your "changes in V2, V3, ..." above the patch line (the
> "-- " on a line by itself), not as part of the patch.
> 
> Also, as long as you are making one last round of changes, please change
> "deadloop" to "deadlock" in your patch subject, as deadloop is not a word.
> 

Okay, I will correct it in V4.

> Lastly, the "Suggested-by" lines you added are fine, but that generally means
> that person suggested the patch, not changes. For folks that suggest changes,
> it's up to them to say they like or do not like your changes after you make them,
> at which point they can add their "Reviewed-by" tag if they wish.
> 
> Please feel free to send your patch to me directly, before publishing, if you
> would like a review before publishing again.

Okay, Thanks.
> 
> --
> Lee

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E28CFE%40dggeml505-mbs.china.huawei.com.
