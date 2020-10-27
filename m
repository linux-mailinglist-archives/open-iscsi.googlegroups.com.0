Return-Path: <open-iscsi+bncBDVIJONZ3YDRB5X33X6AKGQEARTHHJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id C120F29A266
	for <lists+open-iscsi@lfdr.de>; Tue, 27 Oct 2020 02:55:03 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id z9sf6929096qvo.20
        for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 18:55:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603763703; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+YZ51/mUitQOeOaxuqyO5iFdP7GYe2CoVtZbwZaawb5mGc32nU1ew1gmVPK8eA2HB
         EyKbXghcZ9wAp6wjRShLf4g4/lXsHFRtGOSebDIS6p4mdzvBCGWCKqMQrfOdM7RPa8Gj
         t2mW6VuocyY2bEjVRLq91eXMpsxJ7YOQqH9aCE0FrpSKl8itEWZ9Iakt+Qz/TyE/JwlL
         rYnULV4LaxGzsgMyJpyo5pmBzoHYXReTg7MvhwZDcFqVOKOTr+7FRrea7aaoo7BJCj0L
         sS1Hrdc2AAg995sUoBpmpcCt3SgqBW+0GC8GDLIqB2GjyFiwyJmot0VM292ohtZtlP0E
         j8Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=9ZZubUfmAXlIDq6yWLhKG5OnRE1OyDoILbtGqCgBVmg=;
        b=qHY4xLnB8p53SgHvQu3/nPfz0rgwvAt/AaXtNfeRe8nSk7s33L8Js3LbCInJ1m9sl8
         QKdf8BqUrHLkU7Et7qbbiETEOXrup/A53LvEzkHh1sYB/0R0Jn5o3LjivGUV6egaDuvr
         v98Xc9DhgiyL/BoVz97FIGUNXFpH9ZsJv8DAqctNU5Y2nsjPMOw7H+/K8a/wfDeoYY0Z
         FfHN2dlHXnus/SwNq8/xQBIhwP7LpACujEBP4OXOxHwP3ltJB8iqQ7wLVS5kUOvleZKt
         iT416p9ZzQCFi/PsggMoOT9vlKbfT8nKiZpjGtXAeRdfT4ODUMAnDuRAD5ypE730/0Bo
         M8/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=msptYCNl;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9ZZubUfmAXlIDq6yWLhKG5OnRE1OyDoILbtGqCgBVmg=;
        b=BHJMPtJKmKfohp2aYeGJ2u9FTNWsmsJZSMiqV7DiFRFt4KXDTPlQkLYsof/ORN16Jy
         gO923WvyhQI1iHWvxc+kKU6Lmt82hJhq2EL2balAqXHpzi/9/LqNWpcO8LHMxhtZ8TkP
         SdGWe/Y8VUCFCnMUq+EgkphSIWDwieBPs0q0i6adfKue0RcA/D1OouPhTIsI7UD8Ua6k
         vpHSVJ9wvT9P0OSKBUboVFhTKbC8eJtMJbxKhvN9/Qr7ik9Xmu56l/uQN/tlLNQ++LBl
         kS9RWdc3yLXSmGaw5t/uLOAO5ynt3BLlHa1eNb11ZAsUzcMzFpDqp38sP8W3IHKVQi3I
         uvwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ZZubUfmAXlIDq6yWLhKG5OnRE1OyDoILbtGqCgBVmg=;
        b=atDXqmpWZNQZxt/3OYKj7RhElFeA1piSsRD+sAkv174ZOSvxlmEIB+zGxbjFSVoBZW
         +jlJktAMcZloFko/edTT8hQs165SLWHBdXkGbXQW1LHltx+xaJBd2CMpjdXe7m8i+Rtu
         dUHWpDFQbDAvw3+li42E9f/qXfc7C3HKdEvohC/NonoTvpNI3t4phgE11RysbXBWvKKl
         AxT48Oe+4P54pZWWy4ZyxlySFr9C0xFSeL1J9ofuO619IN8X23v9595kjVEhRUdQqwGo
         U3gutY/Ea5vB6Jn3gFUU3jPyX5YnL3hwOKJWguZWCSHaUiGjGBECigMNPJvYgWuY8BZW
         l6qw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531jR+rVsVv3qf4TD4whmejbFG51ST6M5KX3pMYPPOkP88FPAJRs
	1pgcnHTmYyOccwGmRVeTaww=
X-Google-Smtp-Source: ABdhPJz6lmfMHamwjvqjMFvLZA5lNIhhgIRGITEWnNS9sulRl3QLzpUa9OwKEGkX4fQt8MdDLbFweg==
X-Received: by 2002:a0c:aa98:: with SMTP id f24mr108856qvb.62.1603763702835;
        Mon, 26 Oct 2020 18:55:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:919:: with SMTP id v25ls5480923qkv.6.gmail; Mon, 26
 Oct 2020 18:55:02 -0700 (PDT)
X-Received: by 2002:a05:620a:5b9:: with SMTP id q25mr21192406qkq.501.1603763702282;
        Mon, 26 Oct 2020 18:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603763702; cv=none;
        d=google.com; s=arc-20160816;
        b=m3ZfsAmvNUnzSXnrk3WL15fVXo/ciDDcTtYzA3WYwYmj5m4n0e141rLNUmRoMJJ4kI
         6S0DmX2uTQlJKOv0iz0oJhEHzu10l5UxT+hbG6CMgTHYPLyZj8221PJcES7dhf2UFESC
         WVLX4EICc+tsxPYhrI5+PJJrrIdGLKu6KjJkWkiO+9ZRZ8Kvn3V/aaFXzq5S/vW2usnI
         JoS4YzbX0XL77Ii+TCj4pufy4tDG6mNgbb8WleJ7AeyXcRTjroa0iBhlxeNvXftb5Z8y
         qBtVVjD2bWF+106IbLbQ4nhhXJ//tZK2vVOaV6ci2E2U+IIrdl4lV3wuAWHgbngp/GyW
         J2NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=yDFM/K9yMuM00gw9MjFpaCvTdtdae5zoXTwTXSqDLD4=;
        b=tQgrPfspyK0B29t33nrMJD++KdkoFQLRK4g6F/EbEBqT0MdLAcuz0dVYDrfeEFHm06
         v8ofQUd0xrcB2lmVgIk88fAqbBCdZmdo7fstjpzO0wwiznlvyrW+RU39t/PEKWhJuGRF
         a3n33gvvYCT9VzUYI51TUzX5LvIUBKVpZ5td65UQZ9EszeveUuGXyqBqZVIIG9FxtZn7
         mNl3mU1q7DnSY9Xu6x7VaURKKsFnHUrCxjqbgu55aO6aFTTDgLymWEFZI8yMlzNtZ1oi
         bidejIA67qhBEQKL9q6RHMg5EzG4wMhZsij3zKTKayXSWlqZqbE5TppjxIkXRIjCVvMr
         fzpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=msptYCNl;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id k26si1008qkg.6.2020.10.26.18.55.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09R1o7Ob038782;
	Tue, 27 Oct 2020 01:55:01 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 34c9saqmfb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 27 Oct 2020 01:55:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09R1pHYS066907;
	Tue, 27 Oct 2020 01:55:00 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 34cx6vcwa7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Oct 2020 01:55:00 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09R1suW2030550;
	Tue, 27 Oct 2020 01:54:56 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 26 Oct 2020 18:54:55 -0700
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        "James E.J.
 Bottomley" <jejb@linux.ibm.com>,
        "Jonathan Corbet" <corbet@lwn.net>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Chris Leech
 <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com
Subject: Re: [PATCH v3 27/56] scsi: fix some kernel-doc markups
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq11rhk5t7e.fsf@ca-mkp.ca.oracle.com>
References: <cover.1603469755.git.mchehab+huawei@kernel.org>
	<8ed7f149f25a363eea76e514c253c4e337c59379.1603469755.git.mchehab+huawei@kernel.org>
Date: Mon, 26 Oct 2020 21:54:53 -0400
In-Reply-To: <8ed7f149f25a363eea76e514c253c4e337c59379.1603469755.git.mchehab+huawei@kernel.org>
	(Mauro Carvalho Chehab's message of "Fri, 23 Oct 2020 18:33:14 +0200")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=969 mlxscore=0 suspectscore=1
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270012
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 impostorscore=0
 mlxlogscore=985 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 suspectscore=1
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270012
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=msptYCNl;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Mauro,

> Some identifiers have different names between their prototypes and the
> kernel-doc markup.

Applied to 5.11/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq11rhk5t7e.fsf%40ca-mkp.ca.oracle.com.
