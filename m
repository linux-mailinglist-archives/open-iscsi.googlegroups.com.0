Return-Path: <open-iscsi+bncBDVIJONZ3YDRBCMISL3AKGQEG3U4SQA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9B81DA6FE
	for <lists+open-iscsi@lfdr.de>; Wed, 20 May 2020 03:12:42 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id m9sf1939691qvl.18
        for <lists+open-iscsi@lfdr.de>; Tue, 19 May 2020 18:12:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589937161; cv=pass;
        d=google.com; s=arc-20160816;
        b=cTJImSJhpMHIIXmVN/Vn1DHbkaUiKSY6QCSYg1rvp3wp0iuP025b5XW7HiQmZNmUCf
         w2J25Cm8kejlH26HfC6uqpCsLdM0/AVrIVABq5VWmNp682wHcXpj4k+w32Vy50JCuLPF
         8EAkSLQQxO00xDULA/Xjv1E3N2QBjUJEYoMDVpqFn57XE6NI3IpTjCKUO7nHHvuYnVTz
         ahiUc1FEny7BGasqj2IwPjfA/S3GvBRWtEM/umZrt9pi4nUkssApYt+IGbuuMNZ63fp6
         VFF7/ictUbmFCsqCG3abwL7wp3qZgPmduEA4rA7vxyb3xuxjIhdwizEICTr6d/VUPg3x
         5/EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=hMqApAknV0UZz8uJstCNSKobMpqS6jvqIezSKi1aMSg=;
        b=iNONqaDbIXh/2JBVrS9D/HE1bTGrgvHc4qgvM2j/eXaJpDq14mOg6vX6kUERja0LbS
         wjTz3hbv4WQK7xdspMtATkWCB1tu9Rl/gdZimmovLuaiCgz83mOCroTikM1xX7OEF4Vq
         QAc4QhZNVoIRC27k0Vd00eMWHzHIwgyH7ZjVionJDQDbE+qqXUMJsFJC6PeMmaRiV2sf
         dnkIZ57krhhXZvmcqrqaXR9ZY3g1Bt/sl7/YU8j5H6+QLXVyRlBCVE82O6dKBbSqA/3T
         1tp0+gaBTlFqsHG4iTIewxbWZareCrnck4FhzcDkw3gs1eXYVj8vM/a+k/IbOgPwmfey
         T01w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=UlR6Styq;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hMqApAknV0UZz8uJstCNSKobMpqS6jvqIezSKi1aMSg=;
        b=sz5ksxqZ3kq017Oc99rRWmSElK+eVZqGDsNJo9ve0YOXyzrLEgPsVS6TVfV6g/Ljsr
         QnATcvOexe/OpnvhPimaTKrpWzkoPY+rZK26XAfMUXKVMLE8PVRNYCHs5MrVZarblhJN
         CxznqzI/5ega8VEXU8JV10lukmQ/6fa48mNg+oabw9RbgvDUMQLe57JEjPehSry+08EG
         ZD2drn2vuCG4lo+YsLvDI3vJ3GLrAc4CINuPWHu+xdIyZouMdWV34odD/ufSni/0Q/Z7
         acN5phSxHbbgLJQpFMlj0iCWNq0c7eQZJ133nlWvRomBPQo6SFkWDjA15ibhIJjd4FhI
         dGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hMqApAknV0UZz8uJstCNSKobMpqS6jvqIezSKi1aMSg=;
        b=oamRKwyZETNS65mm/TKo5Hbjv8CWWFfIjxN3kiQE6+I7f/dVABK+x+OPgsinQsbPbL
         DXln0vM30gZnH5oa7E2AgGz+cAvBQi3XZJZfLV0lGVEFISM3ibQsdunfVluRdFcgcv3v
         qwNB6RzRg3YSdBN/DoNt6wvLqvBcOvhdQNKMMvX+BWRUeLgfzHHZgfHWPjaP8lk7er7g
         MWo4EgBL9cEBSf3Ky7nfg2Zq6pfuyA4Gk6k0KXJUadA4tu+7v5SFLrZMeBEGFmaEgHTF
         EMb1UGvdEtFg9he9XmotdAH/vD25mbnNUcqK1bvPymiV0/sFVextyFmN4OPRC7WA9iUn
         Z0kA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5328CgEoEzJrlipdntK2hh24x51Q4a5ssDvCHDECPjZK4bOUD4Sb
	PpUKlsDMJm4Vr5ZpaGC0qu4=
X-Google-Smtp-Source: ABdhPJzWfEaMwuzERIpbLSgXeEqvFl7rv4gjehEDINzmtOunrL23FLWJkfFvo300uK3/SgROAaMwEw==
X-Received: by 2002:a37:b5c3:: with SMTP id e186mr2182494qkf.158.1589937161541;
        Tue, 19 May 2020 18:12:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e001:: with SMTP id m1ls812175qkk.9.gmail; Tue, 19 May
 2020 18:12:41 -0700 (PDT)
X-Received: by 2002:a37:67c6:: with SMTP id b189mr2385332qkc.285.1589937161252;
        Tue, 19 May 2020 18:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589937161; cv=none;
        d=google.com; s=arc-20160816;
        b=kt/urlALoTPDwAvl9CJt6U/MrPShmDbxjb7nOKsUecQ9tvLv60vU6ctisXZDWsWp64
         PR1s5vsyUFxdRKTbRs0wd4ikoJjnc2d2qFw6s7NXXzTYrqg4eYtsU8cBEx5bMY17mpi3
         H+e3BHxhZJggKKMHrMVSImyQtwV7GkhbmHmPNxgWiTiw3X9Mpu2AOnIoJxjrZDVapyq3
         GKZgHmu+cu8BSvEofJcNCfEFh2eLxSBHk9pz3LlYXZA6yvOvC/ZsI1A8Tobhdr0Pu86/
         x6sHUffVqyBP2TIfX8Oiei4MVJ2K+We2+SAmpE4avoYnHQ1TAnWwpdE2OTi1yNXHAGsM
         NkRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=DDJLlwCiLhFC3/Wb8r1rQs4kSpy9ZrmNePn9KXOqaOE=;
        b=DerN+fUiUFMJvdKpqQWt/9k7nkdWPIvXDuq4ykithB0beAtUT/x9Qj0M823DgKbRkR
         3xuJigxvcKf7BPzdv0H/BPzrG863udQoPpZXja6NSXTalXdzFdJYP040KqdKNrKLV9Fh
         XIJFrUrSd8byu1t1jxcB+jUPgf/bjUOhoTjvS99df7sIo86UZU7+UVsz+HgYt+vNL0FL
         bCJ/w/9Y3vZOte++AI21KBKuNZ8nHrcUz6C3SfKXaQmMPw8gmw/vXCOF8zqk6Xt+xXfV
         wNnzssmdtMpfoJPQ3k6aM0uEtrWRbTCH24btn60vJmzCXnRIW91/Osrmu5kz8ctGzYpF
         Z+zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=UlR6Styq;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id g126si86818qkb.0.2020.05.19.18.12.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 18:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04K13Opm014431;
	Wed, 20 May 2020 01:12:05 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 3128tngcsg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 20 May 2020 01:12:05 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04K193BA042026;
	Wed, 20 May 2020 01:12:04 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 312t35w6vp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 20 May 2020 01:12:04 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04K1C3Au024694;
	Wed, 20 May 2020 01:12:03 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 19 May 2020 18:12:03 -0700
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, cleech@redhat.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        kernel@collabora.com, Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH] iscsi: Fix deadlock on recovery path during GFP_IO reclaim
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1imgrwgu7.fsf@ca-mkp.ca.oracle.com>
References: <20200508055954.843165-1-krisman@collabora.com>
Date: Tue, 19 May 2020 21:12:00 -0400
In-Reply-To: <20200508055954.843165-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Fri, 8 May 2020 01:59:54 -0400")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 mlxlogscore=999
 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=1 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005200006
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 bulkscore=0 spamscore=0
 clxscore=1015 cotscore=-2147483648 suspectscore=1 lowpriorityscore=0
 adultscore=0 phishscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005200006
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=UlR6Styq;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Gabriel,

> iscsi suffers from a deadlock in case a management command submitted
> via the netlink socket sleeps on an allocation while holding the
> rx_queue_mutex,

This does not apply to 5.8/scsi-queue. Please resubmit.

Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1imgrwgu7.fsf%40ca-mkp.ca.oracle.com.
