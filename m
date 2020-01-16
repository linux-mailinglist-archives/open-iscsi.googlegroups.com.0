Return-Path: <open-iscsi+bncBDVIJONZ3YDRBA5477YAKGQEYL6FNEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 993BC13D2EC
	for <lists+open-iscsi@lfdr.de>; Thu, 16 Jan 2020 04:52:38 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id c31sf1263983pje.9
        for <lists+open-iscsi@lfdr.de>; Wed, 15 Jan 2020 19:52:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579146757; cv=pass;
        d=google.com; s=arc-20160816;
        b=khWHhfQpYwpuuE3/BBMYaGdj0h+SfX5Hx0BMb7tTdR7iEK6pSmu0ZooSUXvHN0TveS
         VvUH7Z6vzLiIK1JZCz3gGz0tTFMPW78nsZa4tfPjf1NsrtY/fgKvYQyvsPziFHXlnjTN
         2jR488Te7VgBhl1vHrPD2XS0e/cX8S8TPpQlHHUgSeVTt7vbM4aYP/c3rl2jv7ADJabc
         ioLa0xkUoI55ZWimpnnjn4d9jFg4+p/ZEuiMv+fIaqMHcSVy+S83s6onpLcPKeGRgANn
         VhvlGTqWlHikLDu/l8CW2hO7ltb5AkV/gN4/qGXbqKYu8FazowWA13vpfl5pF91S6ToI
         apJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=vEy7iJ4mQ+5z38QKezvzmehK9SE8j+vYGey/DzY2uw4=;
        b=Seqmt/UI3lh+hYU+ctKADE0axr9Y6tx+qTQc+GJk1sUoQuRSu2cHDFeV3BRktFmlRQ
         vwAD/ca4SwFuE4lhcHEm0GarOJG6hejfUHjOCYWllfoL34H8zdGRWrDRp0GKR34VJ6Mf
         S1hsR+1bvMzaQtO8PKc4QuTrwSEVaJnz51+xaysmHxEarVdUbPNkHEByPEjwJNWR6KwO
         AkpcnanHxXS+8SAgEThnlhmBfKjO00JxM+beReqaytuk/RzJOOUxvHkSNfHPwbhahJiy
         3BJrBYKswjav7M3SGfLSmlzGvrUAXZPHOwXsPG6l9mv7LZD+bnuULgmH/orrfR06qJ6R
         YckQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=WiFIwo6Q;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vEy7iJ4mQ+5z38QKezvzmehK9SE8j+vYGey/DzY2uw4=;
        b=r3g0PTDcGJC7FaXgH7Y+0pDH8c+/URqplG4W4ISICIm9VhOs/wMb8hvcVGrEYW3Sut
         ETv3UhJkZiqVfsLQTLkAh0q72xHt+Kb2jfniQ/krPdALsn4ZAtZjUtjbnOUaOWXiNtjq
         gjUyzX+s+fzntfDwq49FbCTHw5etTc3Ui7tE8VHKkvkrqB3HGr21OLpDKmTOmljKuOq9
         4rmaJGgbA7/xSoPBe7t1tnkztri+xK8R7a9L33lEyUnWs9OWz5RCGY1wv2/+3jMZjmvS
         4eSV7fu8snfOBAjoo5pYn4+jAULKYqIykrKoYCbTADAdXIyccqsyinkjSfTAwcGkiOy3
         2jRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vEy7iJ4mQ+5z38QKezvzmehK9SE8j+vYGey/DzY2uw4=;
        b=DVvacv/wdjbwi/xVW3REEF6f6Tqd1VSAx5+8O8ZPgrz3wM4kZY7WrrvZilDX2h1Z8O
         qFTmDckYtjEHcFqciIOwa41cO+nUnVk7ue0bTdiO/4StjkZT+WqB3qqsHBZ2oYUUfyGJ
         kbVFs3AAXeoTER5Gx/C1pXLEVIXIltYIb0ktogJAd2U7vGrCf6YcQwCf0bY89oh5jsap
         lxC7poN4Y8IHl27Unz78XMXyeppg3J7/k0w0p1xhjLikERNt6Y9Q+50i3EeKhQwwxFw1
         k3qsmSUrsRzUqRQfwAePX/TaINIpNXFvOPL2sc2iqk7bd+2+3neZU115Ijtqlj4c+K+I
         zcmA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXfb6icQQ+UD8cSvM/dcjW40ukkvD3P4Ty22Qu6X/Kof8Piv/s7
	efOIuq5ptM++7UYAACx39Wo=
X-Google-Smtp-Source: APXvYqzZ0BZFL8GLagpmJaUYNmN3k6gl3Yfi90tJ7b3Z2asV8ZNns1HpupbcvyYdVkM5dQ+0EluDqw==
X-Received: by 2002:a17:902:bf47:: with SMTP id u7mr30667420pls.259.1579146757247;
        Wed, 15 Jan 2020 19:52:37 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:2223:: with SMTP id i35ls5673084pgi.11.gmail; Wed, 15
 Jan 2020 19:52:35 -0800 (PST)
X-Received: by 2002:a62:b508:: with SMTP id y8mr34954678pfe.251.1579146755525;
        Wed, 15 Jan 2020 19:52:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579146755; cv=none;
        d=google.com; s=arc-20160816;
        b=SOYsumeFNQROh1+HtOFVcIo4T2xC0muib8wGdXvqsrRRbG+bjm7Rr+RnnB4JkgxWEB
         sdv8+UJjr2oxpN68VZMJ/JXfvAaFrDiqEzJMx/+qWR6x5O4ruCzeVFCGn3jzCAtx/8gw
         YAb4GkY6KTTiLjH7zoAVtdxBp9O59JnHXOKzi6E+5dNu/xcL38mksUoICGFd4poVsVwu
         YpvDSkqeZR36wa8mQ16iFu8RpgSUnZkxoYhSrGVqnCxB4SVAaAPjrA4JrZRnbiBnIq3O
         2xK66i1NFEclvBvhPpmr0OWUoeyKJvgusToBEj5UguiWyN2l1tXsLVDHr9h94M4PowaC
         urRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=yNzd9lPrWUYLF0Y/Aks4FJNxeyBhI5jJGY+hr0rr/5M=;
        b=XHPJD9j9oUKYuTKOF2ZOV04hpnQMPj2NpSPKFsXTHkTeJXZPb4zKPBZEQ1T/B+EeeF
         4rPSBun9rz21YCgf7StUTayxYTLCbS8g+VDPgRG+08CFRATPzlgUuysjowLiujQJAh9U
         +sHr+PIVZFR3cyflmSMmtRvo/0pkkCxP/vWAPCw+01ujvqHsZxpFyiBiGUa/eyE3GPkF
         s5hYs/H1kMHhCcoi2h8ls0kKrrARhbmLqIeICMy4kAQDVOCjY4Gnkndl9sxG+WGhsTMZ
         YfG4to+rqclZyPtqBM2D14guVMmGlsxd7VFRgDMrZw7vyglBFHCaS8cpYUoDM2tASMPX
         vFVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=WiFIwo6Q;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id k1si1049062pgj.0.2020.01.15.19.52.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 19:52:35 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G3nK6b118247;
	Thu, 16 Jan 2020 03:52:28 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 2xf73yr12u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2020 03:52:27 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G3nVtT161562;
	Thu, 16 Jan 2020 03:52:27 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 2xj61kufgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2020 03:52:27 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00G3qP2U007839;
	Thu, 16 Jan 2020 03:52:25 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 15 Jan 2020 19:52:25 -0800
To: lduncan@suse.com
Cc: Gabriel Krisman Bertazi <krisman@collabora.com>,
        Khazhismel Kumykov <khazhy@google.com>,
        Chris Leech <cleech@redhat.com>, jejb@linux.ibm.com,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        "'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>,
        linux-scsi@vger.kernel.org, Bharath Ravi <rbharath@google.com>,
        kernel@collabora.com, Mike Christie <mchristi@redhat.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Dave Clausen <dclausen@google.com>, Nick Black <nlb@google.com>,
        Vaibhav Nagarnaik <vnagarnaik@google.com>,
        Anatol Pomazau <anatol@google.com>, Tahsin Erdogan <tahsin@google.com>,
        Frank Mayhar <fmayhar@google.com>, Junho Ryu <jayr@google.com>
Subject: Re: [PATCH v4] iscsi: Perform connection failure entirely in kernel space
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191226204746.2197233-1-krisman@collabora.com>
	<CACGdZYJ3hasgRV4MKpizX3rSQ1Tq4R+wDREcYXFUgx720ac5sg@mail.gmail.com>
	<85ftgx7mlr.fsf@collabora.com>
	<CACGdZYJKF85SgOt0-yHiROsqhP0K+x+XAg7CRJv_0oKt60VtvA@mail.gmail.com>
	<85r20g2vfw.fsf_-_@collabora.com>
Date: Wed, 15 Jan 2020 22:52:21 -0500
In-Reply-To: <85r20g2vfw.fsf_-_@collabora.com> (Gabriel Krisman Bertazi's
	message of "Fri, 03 Jan 2020 14:26:11 -0500")
Message-ID: <yq1tv4wnjm2.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=868
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001160029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=914 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001160029
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=WiFIwo6Q;
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


> Please consider the v4 below with the lock added.

Lee: Please re-review this given the code change.

> From: Bharath Ravi <rbharath@google.com>
>
> Connection failure processing depends on a daemon being present to (at
> least) stop the connection and start recovery.  This is a problem on a
> multipath scenario, where if the daemon failed for whatever reason, the
> SCSI path is never marked as down, multipath won't perform the
> failover and IO to the device will be forever waiting for that
> connection to come back.
>
> This patch performs the connection failure entirely inside the kernel.
> This way, the failover can happen and pending IO can continue even if
> the daemon is dead. Once the daemon comes alive again, it can execute
> recovery procedures if applicable.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1tv4wnjm2.fsf%40oracle.com.
