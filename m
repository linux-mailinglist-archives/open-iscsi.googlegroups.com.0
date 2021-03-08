Return-Path: <open-iscsi+bncBDPZFFEBQUJBBR6PS2BAMGQEXD4FQMA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4763306D4
	for <lists+open-iscsi@lfdr.de>; Mon,  8 Mar 2021 05:27:53 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id n10sf11326141ybb.12
        for <lists+open-iscsi@lfdr.de>; Sun, 07 Mar 2021 20:27:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615177672; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q2SHoHz8+R29aGS2gUn5L/x86TXjF/1g8aEww1qAKMCvgR1g30FFe9K5YoNe5Eep8Z
         ZUKRCXbKOxqlp/ZyRPMZ8/KVF3rXSbvS3xTB4qoyFRb04LlhEZCdstopKib3OknZkPqv
         T5JQajFT/DkENKkKar8kRVNVCs4FzTSYhhzq1Yj7kVAqVc5mm+AOyyy/7H39KH2NauRo
         mspiigT+WL3XBwwZ8fKak4xJ+EfaTWv1lEc8T8tcMuEJ97vLVb09AZPG8fyeYru1DGvU
         0/kMSDyo/cgCU+JJ7MgFsAEHLBD4KEgAxyqXxl/IbUQdW2IPvdgLIR7patvrVn7mXQoe
         CYUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:reply-to:from:subject:message-id:sender
         :dkim-signature;
        bh=9EeKMD67wepZFr4nERSoMDHUp6vwxJr1i7mxiMa4kWk=;
        b=y1gBEzHi66GL0P274MwSK0HA4zB6P4AoYKKrFFAeq/XkXrcZ3kpoY63mHI+uW+1lAM
         0n4ZcgpgyeqCnjA5ZQeTwiw6cWxrL+67iP4WAV21hmtKnYJG5zFkQUPwotm9KrggnNAS
         TCs3akLffJgAvocCzIvoODNcqa6KYUjJgihoEX71il0lK1hPV/BTlb/mSdE9Pg/AGZ8O
         9gVg1KZmgJBEw07Dnu8wiOxDNFb1MT0dUdbP7sQZLsS5i+nlrWUNlqE7/zFTrycGY8CW
         49B5HvLHA/zvbubKA2cAYjFgnqziNeKVKYNXmUB6YWbNNjbUE+S3iBn0ftE9i9G9MXAA
         ja8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Ls+2TA4B;
       spf=pass (google.com: domain of jejb@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=jejb@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:reply-to:to:cc:date:in-reply-to
         :references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9EeKMD67wepZFr4nERSoMDHUp6vwxJr1i7mxiMa4kWk=;
        b=XdAybb9T47VeRd6ZkbICG1lMoWAfOJMg3zYvmCPp+soa1pdx2aQXyx/uCQYK5E0YC2
         zitWKlXFF+9GE9Q2+t1zNi9MKREjrPRXnB3fFVYVr/V2okMx95jTVzHMebE6KWl3X9Ib
         Y/CopUJ82JPOuJNTCGQPHfwSvC10pwLGgZp2bvGN9jEMCcHAs7J0qFXwU/RmuE9BDyLN
         hE/Yc9z+zc+yTxcMjAushG9kYjigFI08z7CR96A9nZnw10riYC93RGlamaxBavuVz3b1
         cKp2s9cQgRz9wQVoEOw2MKq0UAz+Moj3iWSZEWfXb2nbgkCvmUg5o3/x7HU33PUTEILx
         FGAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:reply-to:to:cc
         :date:in-reply-to:references:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9EeKMD67wepZFr4nERSoMDHUp6vwxJr1i7mxiMa4kWk=;
        b=WooHKaDVq67Vm1uNLLjcV8VyryenuKx3PYoCRA6WMn9FGoFK8Tq8H9aYuXJ4xZCAoZ
         mGmaFtst0Ttb2TZTKbmEMUbuXtRiacLE7u/ltO40UccHS+92LYkM73Ex8pSVKmpEXWPt
         t49QEbhrYH3ppQrtNMN3r91+FI0z0cQmrwbJm6jJwWX6SW+wc0mEagAOdpDU1e7e9IaN
         xPen+HSxcldTyU7S6/FXEgyil0DIQTH1ijFghR4bkkWvOh56IijcF4e3IxWHWHzoyDWJ
         qOjkgWGztCz2+fxYmbnqL7wMGFHib7ImjTfsz2SlDsUhGOngMGTUpiGULJzYmFyjQSJa
         +y7w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533EQZgvGH5mz20Sedi7WMTIQjvkKJiHG7nE7RKBfR7vRZmmY4Ax
	8GyDaILEIoJgFah5Ijp+C/A=
X-Google-Smtp-Source: ABdhPJzk7O8FJDf7LVG3DZdGQlToTYnaVnOwxl/yTUjmG+4QzdeqT6v2PCB6lyoHPp3wrTMzUsuCrw==
X-Received: by 2002:a25:5014:: with SMTP id e20mr29276017ybb.396.1615177671839;
        Sun, 07 Mar 2021 20:27:51 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls8000345ybg.6.gmail; Sun, 07
 Mar 2021 20:27:51 -0800 (PST)
X-Received: by 2002:a25:68cf:: with SMTP id d198mr29343497ybc.258.1615177671220;
        Sun, 07 Mar 2021 20:27:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615177671; cv=none;
        d=google.com; s=arc-20160816;
        b=VEc4M1Kbm/kZGljqpVN/NSaeQrLiMIAdVPMlkb0nOejnIZUTQ0oiuHiNxWDTAuVnd5
         Vhm6ReoYyvuqqF8Xqj6d3wTbiHX+Y8WQM4+pjWNptQiieo3xz7LEYVYIyYUiuwqtJPfR
         hgdJ+KFNratjjSpdDAWBFg9g3MEWjWh0ie4Z19uzNWBPPz/Z6++30PVlwrqzIcEEEVtT
         asZyUlC6sOOd/KRgi4iRQt06lYOIj0aWZ3rLBcDw4ilM8SDITCLJjVK9OGgbhRlHEikA
         bZdyND1Xwno6SIw1G4hYcIwHFaHl/jkXWZHrcEvue8wDIefFdQDXQA4irzYi761XV8HD
         91Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:reply-to:from:subject:message-id
         :dkim-signature;
        bh=NP39ZWoz9Xd3g1UX+nyLKlZg2ptzC85JVgl8ySjGpMg=;
        b=yu/6OIFtDMz7Ho2WmYE8LoKOoeSltVWx5sIkMaRkzVSD2MbjjIQkytj1GVVaO0ruoG
         nuQ9kUO185gGD1BBgvwMXrDYegMFAXHHs8aC6XrG/hkx/BviuWuhrUBdkRtq7pFf3alP
         GWzeH0dA3P7/rJq7O2h4kurLt81s9KcCmy5DBtsgae+TjfRki7e/zQIQzeLnCNMKRCts
         /3j6b8fm3dYzWJEcqnb1Mb+OChiemIdI6g1QbJVIOuOpyh3grxetaaJWbuqnYwCP+XL+
         1X/z/FUPrYmeufyHsFB0RpYn/tr0jeTL2JGAkbVg04laEl13SO2us6kB/G9hmDhYqRR9
         iCcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Ls+2TA4B;
       spf=pass (google.com: domain of jejb@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=jejb@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id l14si905017ybp.4.2021.03.07.20.27.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Mar 2021 20:27:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jejb@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12843bxa133135;
	Sun, 7 Mar 2021 23:27:50 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 3757ww5dpk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 07 Mar 2021 23:27:50 -0500
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 12843kaI133704;
	Sun, 7 Mar 2021 23:27:49 -0500
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com [169.47.144.27])
	by mx0a-001b2d01.pphosted.com with ESMTP id 3757ww5dpc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 07 Mar 2021 23:27:49 -0500
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
	by ppma05wdc.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 1284MpYh023807;
	Mon, 8 Mar 2021 04:27:48 GMT
Received: from b03cxnp08025.gho.boulder.ibm.com (b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by ppma05wdc.us.ibm.com with ESMTP id 3741c93yx3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Mar 2021 04:27:48 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
	by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 1284Rlka26411308
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 8 Mar 2021 04:27:47 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 577327805C;
	Mon,  8 Mar 2021 04:27:47 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E057B78063;
	Mon,  8 Mar 2021 04:27:45 +0000 (GMT)
Received: from jarvis.int.hansenpartnership.com (unknown [9.80.211.242])
	by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
	Mon,  8 Mar 2021 04:27:45 +0000 (GMT)
Message-ID: <2b90f003bbf8064c2372cba6a61b31cb8dec7a69.camel@linux.ibm.com>
Subject: Re: [PATCH] scsi: iscsi: Switch to using the new API kobj_to_dev()
From: James Bottomley <jejb@linux.ibm.com>
Reply-To: open-iscsi@googlegroups.com
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, lduncan@suse.com
Cc: cleech@redhat.com, martin.petersen@oracle.com, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sun, 07 Mar 2021 20:27:44 -0800
In-Reply-To: <1615174470-45135-1-git-send-email-jiapeng.chong@linux.alibaba.com>
References: <1615174470-45135-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-08_01:2021-03-03,2021-03-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 adultscore=0
 spamscore=0 clxscore=1011 priorityscore=1501 phishscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103080018
X-Original-Sender: jejb@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Ls+2TA4B;       spf=pass (google.com:
 domain of jejb@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=jejb@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Mon, 2021-03-08 at 11:34 +0800, Jiapeng Chong wrote:
> Fix the following coccicheck warnings:
> 
> ./drivers/scsi/scsi_transport_iscsi.c:930:60-61: WARNING opportunity
> for kobj_to_dev().

I have to ask, what is the point of this?  container_of is usually
pretty safe ... as in it will detect when you screw up the usage.  The
only real misuse you can get is when the input type has an object of
the same name and return type and you got confused between two objects
with this property, but misuses like this resulting in bugs are very,
very rare.

Usually we wrap container_of because the wrapping is a bit shorter as
you can see: kobj_to_dev is about half the size of the container_of
form ... but is there any other reason to do it?

The problem is that container_of is a standard way of doing cast outs
in the kernel and we have hundreds of them.  To be precise, in scsi
alone:

jejb@jarvis:~/git/linux/drivers/scsi> git grep container_of|wc -l
496

So we really don't want to encourage wrapping them all because the
churn would be unbelievable and the gain minute.  So why should this
one case especially be wrapped when we don't want to wrap the others?

James


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2b90f003bbf8064c2372cba6a61b31cb8dec7a69.camel%40linux.ibm.com.
