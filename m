Return-Path: <open-iscsi+bncBDVIJONZ3YDRBHWI67XAKGQEMLSUWHQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id D866810A8DB
	for <lists+open-iscsi@lfdr.de>; Wed, 27 Nov 2019 03:49:03 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id f66sf14772426ioa.21
        for <lists+open-iscsi@lfdr.de>; Tue, 26 Nov 2019 18:49:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574822942; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gnw3YXEKi3NZ4B5uG6V06w3ijZcmp5WPtyXP882dJfgYFrq++SVR34rflySVhmkyeV
         x7Fl5d8+6xHY3P2Nb2yK+iUGNnOmMpppdjWINx+ZdSXRF4ZqrvQiKIJv/9i4lFduZioE
         24hT064LF6PC3l/jkNtUY4vhjmmAf/6TfHJV8XfhNJyQJNMxl6bzkXZZTsM8YWaRWaAP
         Rkh38UTglLn9yjSlPH6+02s1//yk+R0w/Vem7LRFh9NAFLyxGFzhjxwKWhOiy1AcyyyB
         IYLBOLLNsr5vwvoF47s2ekdUB2GTUegSoaEKJ3BEdi1TAX76I+vuul/78We4f1Pu0WEq
         xqAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=a43pHGDjE80oAoXLlQRC0v6bUxaSpqZxNi/goa5GjhQ=;
        b=O8QIs3Md/I2EoDd9SMRvHBZww8eOz1757Uhq3f9H4LtwTYCmCK8xo9R/FiQdhQ8c4D
         vNeLgnRqC3aLyGFrQ+hkM5AR4+8pbGj7M1jCgs4J5pDPOM9WFONVJr08GDLf/EUSnppZ
         /nZtgsqh2FAxSjWjtSPH8vbbfLkgMJXc6z+dnWM7/kGLf6j8vSuPTc5KFlSVUbQkBz2J
         0uPMvcsIr9v3VkD/4sXA4DdR4GFAH+XTERas81i73R6gET9c0V/RJdEiIyxxmNgCW7TF
         LqPC5YwP1+DWlJudCmfyt7UqpsN5BscKagdXwe8N3NoYFv1Ehl70Dn6RDqkANs5crxSX
         FNxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=AQiDMc9L;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=a43pHGDjE80oAoXLlQRC0v6bUxaSpqZxNi/goa5GjhQ=;
        b=m6K6zToKoJpNKFL51uNcjleem5uYHUpD3+e/16VUtmt+zk6td1q5GS+c/uJJ9ZgbRr
         upki+/lcDIlzipA8N4cDBueDPD5oG7RoXqBt3KNUH8TkEa6mf52Yr6zgIgQsGl2XtiO8
         CCRlD97LEPreYuNEKTpiDSfkbk3cCsPxKWmYPV6dNc0qQq5YOtYphrW5hU+zUWff08Py
         yi6gGUysqs1G38mKGTyWEJTRq41I3GtUTb8HJ6RLKA2950Kee0TGDtlnSg9WQLm/6oqX
         95+kqH75F6+Dz6PvL1hjZoZ1ByclZFXJcFn6VvUrvtkB69QQLnwaBtuk+EU4T2lFxd6T
         u7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a43pHGDjE80oAoXLlQRC0v6bUxaSpqZxNi/goa5GjhQ=;
        b=K5uPMy00CqlyQkt75GktFLhy2cEUPwCYnAhZE8ztQUt8hAH4XmbviWdWrJT00/whw3
         +0BlqovpJ21i3/RM/NIT7XFufAkbbL3KiZBHe6VIcl7iB87Wp4wTOga0d19HFFRwBGQW
         KI2sEMGn6fqxy8kqI8DZR6cQpyYNlNXrT98v1LVdGjEzgezho1o2BaEgw4EjnwN0y9DT
         KQ9Or3NyRe9rQIWmQrct2TDX/kxaAxOwfXx+2nJkWsihjAfovrgpjPOT1JnUmcU9hfBw
         w3fSFFDQoDf0tqz/9gIXmLcLOWOtnR4rZCxcxIfWBeK8Y9x9QBKkstbBXBmlNqrfemsK
         00GQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX1FeJ9opkDRWp+Pd9yQeQX6LBFi1z4Y3GAtSVaHkNAdEiB9Hxz
	4mqo7tYsH7WzkAs4nbsNLMU=
X-Google-Smtp-Source: APXvYqygeT5rSjepovZS+9GMnLuoKcl80C2iAKeKgwUQuJrKHT+xxvi6pVxhRmiZQh+LyMjZ15pq9g==
X-Received: by 2002:a6b:9204:: with SMTP id u4mr31490398iod.99.1574822942166;
        Tue, 26 Nov 2019 18:49:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5e:df41:: with SMTP id g1ls3388533ioq.13.gmail; Tue, 26 Nov
 2019 18:49:01 -0800 (PST)
X-Received: by 2002:a6b:710f:: with SMTP id q15mr7902525iog.103.1574822941582;
        Tue, 26 Nov 2019 18:49:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574822941; cv=none;
        d=google.com; s=arc-20160816;
        b=F8if6t3JabK74fumB3pZ1tbKoZsE/VLdAgbCctTp6ndQjL48gKTcQz0anNfLcJfNGq
         Q/bHISIkuBJtJHDWVPCBC25heqVkpNV51E8FlowsOlbs23oPM2AMNLVydlhSiMIeayIA
         DavLLsgtt52xUkrIULZNfJ9vT8kTytdR4dsD5q6YSZkmPI8tXS6qDWfn5wDs/zQuHNjF
         pNN9BFhS01MillT65CD6kM1cwYy6M5Qx5mT/zhGn9ULaS3Uk80wim4XvI82/a9ZcsWxI
         otxujWjp1hoiNiX+FWk4Wv2M0ApOvA0EaEMjPed23enZrv+HSGWFwALVJFjtTe7vTGeB
         mxbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=aIFj+6dOTDRVjCZTbcJq9ZupkGjcGMLz4CzfNB2ji3I=;
        b=ZqzW3QTie2GWNXcM/oKxCwZQulez+WhfMYeLoSr17tM54U3FI5xeV4YJ074bvFULk+
         2CnUTaDyIN3EpYV2N1EGYT7RRmrcsqBE4TWPi31eYuwPk04zdVBAKGCRTGEgPfiCrVsx
         KkcoDAVl4zNE+Ww6obXl+3+0IAHrNvVocTMg9YpAgsJ6kXcVttmnDGOnRKrRAJU1+mvY
         7i8VDfadjaaHGkRMBw6GUueebJ87ydehzTQivqvWJY9/BgyhQa+OFWtPWopjbe3h3X3n
         J8DXyHL92lSHNKotY2SZ7QivqUjmERyFD5Vp/CwAkSUBtb9RDhWqjOE4N+T+j93EmDWS
         mqxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=AQiDMc9L;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id g10si323881ilb.2.2019.11.26.18.49.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 18:49:01 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAR2iFqo039574;
	Wed, 27 Nov 2019 02:48:58 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2130.oracle.com with ESMTP id 2wev6uahfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Nov 2019 02:48:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAR2iNuX176251;
	Wed, 27 Nov 2019 02:48:57 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 2wh0rfj586-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Nov 2019 02:48:57 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAR2msqb001038;
	Wed, 27 Nov 2019 02:48:54 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 26 Nov 2019 18:48:53 -0800
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>, lduncan@suse.com,
        cleech@redhat.com, jejb@linux.ibm.com, open-iscsi@googlegroups.com,
        kernel@collabora.com, linux-scsi@vger.kernel.org
Subject: Re: [PATCH] iscsi: Don't send data to unbinded connection
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191116004735.16860-1-krisman@collabora.com>
	<yq136ekifn0.fsf@oracle.com> <85h82rvqza.fsf@collabora.com>
Date: Tue, 26 Nov 2019 21:48:51 -0500
In-Reply-To: <85h82rvqza.fsf@collabora.com> (Gabriel Krisman Bertazi's message
	of "Mon, 25 Nov 2019 11:51:53 -0500")
Message-ID: <yq1d0de825o.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9453 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911270021
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9453 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911270021
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=AQiDMc9L;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

> Although, looks like the MAINTAINERS file doesn't list linux-scsi as
> the target for iscsi patches.  Would you take the fix below to address
> that?

Applied to 5.5/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1d0de825o.fsf%40oracle.com.
