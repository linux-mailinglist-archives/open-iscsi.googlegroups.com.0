Return-Path: <open-iscsi+bncBDVIJONZ3YDRB6N277YAKGQEI2ORZLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id D19EF13D2E8
	for <lists+open-iscsi@lfdr.de>; Thu, 16 Jan 2020 04:50:18 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id l7sf12198888qke.8
        for <lists+open-iscsi@lfdr.de>; Wed, 15 Jan 2020 19:50:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579146617; cv=pass;
        d=google.com; s=arc-20160816;
        b=PwdxQUDdRp0MGIqevVjs9QbTKgiEHF+Fb4TiRcUe5PFWUWso3iUkCYDuZn2dI3LPjw
         DiZdeeIMk/ShqGoA1GZtrvZR5qgT5NHV2KyyrZZKv70HSarv8TcL8imKY655ngk6tG5z
         CTOt/mur9c69oWnd6pMGIUc+j/6RH+tZB6jg8tnILhTPCempf3vDynZNa1+ZjCJflVNS
         WV3NS8SVfn1zdzn+JYsJmPdgl2XR1JrBHGZzR4A8PqfbOxUdhhlY+W4mreZ5sqbjh2zr
         lkhdogue9ISf1z04yXYXJMxa6MWtmLZfj+19GyJMM8JEW2zHXqwdO3MpdWecmdeHNxzC
         qusw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=+sBMgMbSCAPk42G4QwnDyIzd/v718e8pOU1ijcmTnrg=;
        b=Xs3otbZX343ln1EHlwlUH13P+uNXmAOdVCsuqqTUaNrQXb57651Fy2z3cuR+/BAeP3
         0w/A2lNLQ+uUmdn103uiiHCuTY1dxt3UCEUAtKQKIg+yyYiQIFYVKqlznPcHu96G8CWH
         5ZJ0TxQ8veiAibSY4qFJFtkEelxJEraxo1hADS5liQquBbUR3qA21L3CzzJLgnEGufQ9
         hyETz2YeEaWhwBfdlK07f6cXRukXu28hYsi3vgkabSdEGF5TNcB9UgbDnuph3VgED5Jp
         9fF+eJI+/WouMHQFC6MuUg4Dj88O8RMzor7BtXp0R9nAVswTeMYmcL/k+GVeYT33ZFPa
         2PMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=JNuIMv1J;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+sBMgMbSCAPk42G4QwnDyIzd/v718e8pOU1ijcmTnrg=;
        b=GAJHDQymwmi+S2Vj6ozX55g8+dY7yvIRwpd3W7a/eBLKwpDZ/1o1nmDNZmiy8utQ70
         fEVCJ08pHrl6a6Z1BdU3XblL/zqFdtWngt5EXyuHNQZtbVxsijXrebyXgXhqXV1WosbZ
         3ePcqFnVFlE9CLdHYuYz2C/aQlCa5QwtgMyLzFaczqqsv+XeDnBdWufzKnah0o2i4T+t
         Fxc8xmL/XA9rafmbpC8gM14vHRX2apT+y1/hMsZXdfQzTkBgjpnTtVh9a2CKVtyS6uUa
         CD0VTQTFSrZsGCN3G9J6zFN11tuZ6ZYOB0U6iwE41ZMvxWEHRzm1JdF89A0PwHhtS0je
         JvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+sBMgMbSCAPk42G4QwnDyIzd/v718e8pOU1ijcmTnrg=;
        b=WdNjuT4+AkXuL5ACpPCw96r4VGqlE08AEPgPhcFfoaJVEEKGodiS4JlHxrtFmxhv2D
         JrfmVGWCMBJ3e88p4Di375mDNvPfh2omud5VVuVRnzL9AM9UiAnrFFdB8E4EM89GWOLx
         Yq6LEFPinyrlFga5ujjnrC1GyDLzSOsbCPtiNp8XXtiWlis0tsfQ1oKkiBRdukBT6qSk
         g7wMQkQzWbu+A7IoQptUOzhrTa944UCBCgE7FKZ/PeRKnz5oFteHjglOLVliGOBxbEeh
         YtTSsyoNG5y8+twd8T9C9ljuvYaEGiSuh0zwlBxZKhuHQbzhGx870mjbZiPXLL3xFA4e
         dBHw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVvqmxNL5+XgMbhv+Pupb2dh8ZGhRP7hMg76PHuYI/EP4qSKM49
	/7QN7Oohc/yKZEGFl62cXRA=
X-Google-Smtp-Source: APXvYqzOp+KDWtznQbjsDnHGD3vzE16RwqEHWTSL3Ac0JFbAeFGLQ1Es7mKGtz9H3yt2EHxV/MXr3A==
X-Received: by 2002:a05:620a:12ae:: with SMTP id x14mr32276502qki.5.1579146617664;
        Wed, 15 Jan 2020 19:50:17 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e30a:: with SMTP id v10ls4985280qkf.2.gmail; Wed, 15 Jan
 2020 19:50:17 -0800 (PST)
X-Received: by 2002:a37:801:: with SMTP id 1mr32032258qki.326.1579146617332;
        Wed, 15 Jan 2020 19:50:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579146617; cv=none;
        d=google.com; s=arc-20160816;
        b=sYn9xrGR4DIeygs/RETOPGA1lFgCtV6kpVDHAbttsyzTVXXls2RxTBO00a9GRgsd1Y
         sLembQPTU41B3cNX+ec5hq3QTQJhqTJbwdLRHPF12t3YKEPDWLkPU9AO3F43ZZtydMQz
         anpPD1u0kDMUzNSMmwJHae/6rK+M6GdB6hExh/5lQJQxV8NvyoVD5aryxAV/p6cFqQn+
         CwpLwrLFUEbviBoBghboqtBW7kq+0HvFzVBLsSqR8R63+nkt8AEJ7jd+5URKazeXbia6
         8arce9yxJaXjziMYlh86NpWPhfDF7MCaPX68SKEBusBSsOWYZyj3uguY+t2chg+B0HRj
         suAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=njSDr3bJ/+EnSfFJ9jR4/8Ugjsh/dZbMCVbhPZJZtxc=;
        b=TdexylpYiiqAMSSJRUccCd+H9OOkizLg90UkQK7ctEhtluFnrNBplaqY4uoC41xvaf
         keFxLnHgCVesc90wi86N+jXXtHsRqhbxHFhPV/eXxr05UwJIAYGkFiDvemzU4wWMSkS3
         EnXpFVWTspFUxl10Os5j6rT20ERDUnXCOUgTgQq/LrNSBgDkVpzmKpj7LQl70sNyHKc8
         cZCD8uydAAntShYgKrQyGjuF9JvyRuRGwtCXbrTFO+j8jrzGuObRHgTQTOes9+Xm8oeU
         3JKHV0CMWgUUEHw4ULsYfdreH/tU0QVnmGlOJkAY7iWoQbcsa/Nl5kq01218xXBPxSSe
         rCMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=JNuIMv1J;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id l9si1012969qkg.5.2020.01.15.19.50.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 19:50:17 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G3mui9102865;
	Thu, 16 Jan 2020 03:50:14 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 2xf73tyxdw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2020 03:50:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G3mtRo139207;
	Thu, 16 Jan 2020 03:50:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3020.oracle.com with ESMTP id 2xj1psa7uf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2020 03:50:13 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00G3oBFR017415;
	Thu, 16 Jan 2020 03:50:12 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 15 Jan 2020 19:50:11 -0800
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, cleech@redhat.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH RESEND] iscsi: Don't destroy session if there are outstanding connections
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191226203148.2172200-1-krisman@collabora.com>
Date: Wed, 15 Jan 2020 22:50:09 -0500
In-Reply-To: <20191226203148.2172200-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Thu, 26 Dec 2019 15:31:48 -0500")
Message-ID: <yq1y2u8njpq.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=979
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001160029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001160029
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=JNuIMv1J;
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


Gabriel,

> A faulty userspace that calls destroy_session() before destroying the
> connections can trigger the failure.  This patch prevents the issue by
> refusing to destroy the session if there are outstanding connections.

Applied to 5.6/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1y2u8njpq.fsf%40oracle.com.
