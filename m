Return-Path: <open-iscsi+bncBDVIJONZ3YDRB2G247ZAKGQENYCY56A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8761744E7
	for <lists+open-iscsi@lfdr.de>; Sat, 29 Feb 2020 05:49:45 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id e22sf2213509vke.21
        for <lists+open-iscsi@lfdr.de>; Fri, 28 Feb 2020 20:49:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582951784; cv=pass;
        d=google.com; s=arc-20160816;
        b=XSUR1JHKeKN/ViTMdJbF4hIlTLgo3OkgY6PlAkEH3SwjHmlM4lLSHhqyG+Mllemmi0
         8F+IKROlaMSlwMok0UCeB+hq3/7DSlYw7ExlJCx2/TwUqynLUtYJ5kYMH2a6UKeeUNN4
         M2ST1xdINq8kWZqP72I/bX3tVbeKsWP/FPfXzfmB1yrQ+Iu6z/yK65cuLqc1If6CXnEl
         P8aNwkyKnXCNqx3gcI9AzekYv6aMVeoxfjNjmSs2Veu0J7jUZzWIegC4mIhF1Xh0DsT4
         QfT4uBjvAQhUG66NAY1T8u6rTksEqWqENXlD7N2tkZb9GTxbhdGbfg676I2b8oAzQq0r
         iwuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=5wvqLnVKb6Aa40KPtCbZCTx4o1vg4tRlgcbyB5ULwS8=;
        b=egaGyXRTtMGuM+nhwz+eNt4KP7MRIZx7xgVuIBcRVrAWy8WTV22j6UpSCuENTY3/ht
         CIlCnksWiVmtZYxDJ/a0PZDLTz0snRNpMCpS+htK6LZoPT0Yc77k/aqAn+n3quhrZZq6
         7Qqo/G6NOLHYFwMJ/nQZoz/xkYB1h+hilopdueSLq0vWBWRDfWt+H2nbsBoYrsD5GOBF
         x4qPBy2tT3czgSREBysou3akkrKSygc39Y9S3FeNOejIkn6SLFokQFHpAttuoxJ7Unwr
         OZkLZ//so9NQne5wrDVIWaJ4l094DuMhXdwIEH0s4Aa+Pnt1jre3zYTW0ZdaNOD5Egg2
         BGdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=sQsrTyp0;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5wvqLnVKb6Aa40KPtCbZCTx4o1vg4tRlgcbyB5ULwS8=;
        b=dbum+XAaPhiETRX1UDDW71euDUoj7dfjYLbMVvZPXkPhLS+iSp8H5hUqhNCYIRWkgy
         Rs7EXvbSRFngXzqWcZiGsceuwFOa9b6efX6Ng0+jiI0wZKxMyhZqDRaNgu8pYBi6dseX
         yeoTPO6LWRr3kPl30yn3rJlGXfgvM2iMx1s7uxUq85PlaNeIewdvlSgaPgrB8M8EM5wR
         ZKVVuvaJV4/RC1eOzrTV6C9ce4fofABY6BbjM6lP2rUT2nIKQKXYP7azikvno4jqXYw8
         y+SIAHIPiPOo8upYbaFugILpSojsLPjqEC2tFoGrS9KGu6rO8qExKCv0OPdxrmzx39+K
         cHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5wvqLnVKb6Aa40KPtCbZCTx4o1vg4tRlgcbyB5ULwS8=;
        b=Epv7kErmEhrOqTfYuziOq2M2GSK2g25aGiwZw8w9AyXv5NcV3Lze+XAu99F4IazkNi
         FNghURhc6VTXYpIh0oTZu/JOHd4I74nfg6eFZpXuqa4NTHMj0tiFngdDTWfVfIY1MxIk
         0vLO4GYUdGKn2dcmZGxfJ/coO8fLlnjvOCyirtsnDpSZ9IazNIClcGUPEdPaMZcWCtrr
         dX9XRUpN3RB6r8PGekz4VY9EL0xThSNpmdDWgalwMBJMFNnH/ciEErYdQQZepYyGE1dC
         q0gtQUemr5TLmekozY8y80TJZCmPhbXqne3BRqwivpCa950bhTFdl4p7mJp4vF59vdhL
         OvrQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ0BfCU8uZPIf6uypDad3qkuRwx4z/YZAzTUgP5xiKnfzaZkRB+e
	62Gy0c/R+eSCHJv2Dtr4PTs=
X-Google-Smtp-Source: ADFU+vsn3PkDA3X5j9+v7T5KmLcToimfVfWSUZzGx6ti7NKq2dhFjIrqcHM0mkq266MOoLNgp3+T/w==
X-Received: by 2002:ac5:c844:: with SMTP id g4mr4245334vkm.25.1582951784503;
        Fri, 28 Feb 2020 20:49:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:1d14:: with SMTP id j20ls371892uak.4.gmail; Fri, 28 Feb
 2020 20:49:43 -0800 (PST)
X-Received: by 2002:ab0:6e6:: with SMTP id g93mr4089304uag.105.1582951783824;
        Fri, 28 Feb 2020 20:49:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582951783; cv=none;
        d=google.com; s=arc-20160816;
        b=H6N/jAUWvN8voyksusV40C+OoCCG4xm+2a9ZGcSJVPSu22mft5UNclSwXCn4IoZvc5
         n8ysnqkrH4j6ad1DVRqJ/vUAWWombeyd/JZy1z/ozGzQJ2SOg91WLCww/9aREsveVKje
         xai6Umk8L3o3qWkk5MyGzVZ2X/xpkZch+3HkG5DSy1wWv8d0tO15HiDPEvO9fItZMB2K
         b+7R1n6YMGOYu6pj1f7abisRvjSM6x6PF06jw98FYAkXqhYQCubDaLmgRWzd3nqRonKS
         1RmRNSmTmOWkADNrAYPyrdVi9DiJtoqfzVa9br8YOHhYCWIwuk7E1xO2AFeIEjK7swLd
         XMKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=kzR9CGwA8QkKF16UH73eDglqPnsxYFUS7yPTFc3wG+Q=;
        b=IVCuGT3Sgum9D54vz+ylKHEHyyJlh2BqtxF/3I1NZ/wPR5viETtybAyDvri/rSs+XT
         HHQ3U/nxvPHNSedSxYF1RW+7CX1nfsT4n9fULuxJo1BrLi+0/6GQ9bf6NEkEk8vXd8wT
         4CMOb4lY5ju71O/bwZ/DvugTWtMsnJPvOZFhOqHXNYcjHgaMtALxyB3hv30nrVy4NxMa
         C3pBVwa0RQ8vzkCjMAcHn05cn3/ocFSFYJKHYAxVyqDRKa3+vII+RQ+g2aUmRsnmQ2Xk
         B7bl7OVe6NfL1wUEQIys2Iu5+DJ9uGMGnG5PADYf5fFpI5/vMpKQQpfAyJ1QgZ0W6A03
         pXhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=sQsrTyp0;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id u25si442830vsn.1.2020.02.28.20.49.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Feb 2020 20:49:43 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01T4nSa0034340;
	Sat, 29 Feb 2020 04:49:28 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 2yffwq8404-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Feb 2020 04:49:28 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01T4lhd2010921;
	Sat, 29 Feb 2020 04:49:27 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 2yfe0d9c8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Feb 2020 04:49:27 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01T4nPYo013441;
	Sat, 29 Feb 2020 04:49:25 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 28 Feb 2020 20:49:24 -0800
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>,
        Karan Tilak Kumar <kartilak@cisco.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Brian King <brking@us.ibm.com>,
        Intel SCU Linux support <intel-linux-scu@intel.com>,
        Artur Paszkiewicz <artur.paszkiewicz@intel.com>,
        Sathya Prakash <sathya.prakash@broadcom.com>,
        Chaitra P B <chaitra.basappa@broadcom.com>,
        Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
        open-iscsi@googlegroups.com, linux-rdma@vger.kernel.org
Subject: Re: [PATCH] scsi: Replace zero-length array with flexible-array member
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200224161406.GA21454@embeddedor>
Date: Fri, 28 Feb 2020 23:49:21 -0500
In-Reply-To: <20200224161406.GA21454@embeddedor> (Gustavo A. R. Silva's
	message of "Mon, 24 Feb 2020 10:14:06 -0600")
Message-ID: <yq1eeue5772.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 spamscore=0 mlxlogscore=619 adultscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002290033
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=685 mlxscore=0 suspectscore=0
 phishscore=0 clxscore=1011 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002290033
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=sQsrTyp0;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Gustavo,

> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array
> member[1][2], introduced in C99:

Applied to 5.7/scsi-queue, thanks.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1eeue5772.fsf%40oracle.com.
