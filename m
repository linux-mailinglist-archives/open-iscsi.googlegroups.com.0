Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBI56RT6QKGQESJ7XSLQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 924A92A6FBD
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Nov 2020 22:37:40 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id q19sf24804ota.17
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Nov 2020 13:37:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604525859; cv=pass;
        d=google.com; s=arc-20160816;
        b=nvZIRQsUVML9caIqCCmRBIyd78rDkVByjnZLLkyjiibmDAy98+RCwtnq1/4dbOAZFH
         d3V1FhXi/WGCECrkcDBzVSGWM3TDG4hszU6au7NHnP29chWCkO0JE74aWsWQDDkOFTm1
         K59ITkVw5VFO4mFYqwYJfGDalsG69vBwTLUpUP158hMntORH8CEL9CShg9OGNYWJ1dCK
         6/d2TJwNZckmrdWO1ReOmxr5xYtY9fUcNPVGxQCQOl2OCyp3QsMfHdce3XWbbnKfiAWX
         mHVtarA8+N/VBKGYjx81CEf4IjC1NfpbhGWN5sNQPMmH59UfR36RaNnW8bD9Rv6A9OlI
         c/PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=uqr7Pla3Qc7jd9NtTvRD3wFD9VJyjs+XZuex9q/AmrI=;
        b=GZqPiQqu2eG+DgdMR6EJc6UkO4iwZkffuvYPbpultUpV2xuliC+T+GrA0UFU6FmV7Z
         wJYaBgyZr3d9MdjXvDXXNE+sKkDpCEot/UL+vEsyoB/YMPnE5eULOHvn0F6jwaSP+/AA
         DdbmyHHwdC69NDFzo/5+bozua1YIRebHsvmF7GmsxlOEWzD8j7pfKKoB6mV8w2dZmOn+
         cM82Z2HURf81Uz4mN1SAvEr1Q99KGxOFxl7CvNvLLq1nnzn/2KPm+AIOCiec8Zby1Tjk
         0Q/G4kCQD/AQwPggqYkpwAFmrqfIUPr87ZpXFsR1yeLbwbtEngNTSlOL3+nhKErR2dEA
         LoeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=OJXYvYb0;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uqr7Pla3Qc7jd9NtTvRD3wFD9VJyjs+XZuex9q/AmrI=;
        b=ZqnDX2GiDziyrJnqwyICwPGclvwV+wPyqka5ih/PbiL2covzHoeda+sUug7zOEKVck
         7ZYUBR5v6oaM1bAaYVP7ejbPuBrce+9ZmjeNJzkjZP49HuOoJzUXYDELz1aKqsy5eZ7l
         kSjZVbViiDYMTwCbyF8nIujpqIgyE/6Q3F3NF3gM1ConUl0x8bx2FZYvtXk9SRltBvtM
         m38rVw3oYi9MLUZOcFi20N++WslyWYahi6BNFsI/E+PQTPclP17A7Jv6iEdeKfTkFgZ+
         0jCayDK9XLVrwu+g9gDH/qCnZHRrlXZXzld+8f9cQ6iF0h+dOtziYKGx5T2Nz0G9WwO1
         uSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uqr7Pla3Qc7jd9NtTvRD3wFD9VJyjs+XZuex9q/AmrI=;
        b=mLyOiw0KqA8Ifq3AvHcDdTiJ0U3aXxDevdbRDM1MC40EulqkdOpO4hAi1TzOpRudjX
         SXfCSKfN6Slj95r+h0Ox38EOs91gHYliTJoL3x2D5St3XXP3uck7fCeV1OFE8cp1A3Fx
         +1Zmpb3TGg1Seg2lAj/UhxTVLJYWJ+RJ0uVK8PhKVytrv28SQypB2xZF79GnVTWZ/kHn
         obkoorbmxC1o/rTmYKOzePhVvbRzeKDQ9CIJgKuVjtyHxiFG2pY8QZtpHmAxpmfeXTKV
         +fdrey2cq5jjogQWP4r1Z8zthltrl5JrfiAXsR/zDJzuZJJ3mQVtHx1+oSeC7vrtUvjj
         ujLg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Xuoowbt2Cw61T/pxFRqewo0fa7A+JDCkgFC8Swd1FtBXoumI7
	1SQucablPGA8cNuKO9vPE48=
X-Google-Smtp-Source: ABdhPJzQCXsQaN7Lw2O7xYzWLieW0HkWos5q97UA57xcMDKhEvQkiQsfLVh+roVHAbWkNtuRZmeWqg==
X-Received: by 2002:a9d:4716:: with SMTP id a22mr7406278otf.82.1604525859530;
        Wed, 04 Nov 2020 13:37:39 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:bb2:: with SMTP id 47ls849611oth.9.gmail; Wed, 04 Nov
 2020 13:37:39 -0800 (PST)
X-Received: by 2002:a9d:7d96:: with SMTP id j22mr21201877otn.295.1604525859124;
        Wed, 04 Nov 2020 13:37:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604525859; cv=none;
        d=google.com; s=arc-20160816;
        b=NUjrmTJbMbKta7hrhqB4AADBLbHLgNl8JTE3pB/YS2a6mTBIPoACL/ET3eN1fDSxup
         WrME0J07Frgfx1Fn3BW9EZMzPoeZFFoevNA/5hD2+irBNeSooWYNviufV8WEUDYRIufB
         jrU6aSw58V2j8gRHNUH2rCYoV8mq8a2+co0+LDvIFYF/LhLTgLKTOglDi5ETkg/68tlG
         My+Tw8mF7okz61wEM35ppVmZL4FQeKwYcskGFujs4PuuJ3SIhPSgpM5DI+AcerfnNGk8
         bGe5cVUy9V40h/UnzxzIIYcToY1bkceZE7y9fR56u05k12DDJdjNEv3Jlny6CmhgarKh
         QFjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=P1HGoiNjFAgbuQ2OXKElhEpImKJv9SIECIanK4JrJgk=;
        b=LIYQgaSDEMi+7tXT0k9twwPdQyurUSxMaMywQuR4TeL37zVhIIGLJ9vEIDFvxobal0
         iy7ljskHV4vhTGaNwGKBsaoag6uAcSbkmiN3xdTEL3ZCzMD2hShDEyi4twBSie8n6hrP
         roGi7t5PUMMls53Exuk/GrtvalVUJqLmg0eXZKcs5+I7doCEKVWYf1LnFdaOmZV5HUDf
         RtmnpmsG7QWp1Lx9C/Wzpj8iQoLB1kszflE1ZxqlbmF+SNdo47RY+j7Pf46UJGgDmaU7
         Q4VoCWPQqc6/neS5XL7vj+l2Y99CP0darxdyEpti0ovcyrG0pxe9oERja2BBt4cWf018
         /YdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=OJXYvYb0;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id v11si299268oiv.0.2020.11.04.13.37.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 13:37:39 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A4L9BEO029826;
	Wed, 4 Nov 2020 21:37:37 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 34hhw2s0y4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 04 Nov 2020 21:37:36 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A4LArJd004445;
	Wed, 4 Nov 2020 21:37:36 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 34jf4b1d6t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Nov 2020 21:37:36 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0A4LbZ6N011032;
	Wed, 4 Nov 2020 21:37:35 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 04 Nov 2020 13:37:35 -0800
Subject: Re: [PATCH] scsi: libiscsi: fix NOP race condition
From: Mike Christie <michael.christie@oracle.com>
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com, Lee Duncan <lduncan@suse.com>
References: <20200918210947.23800-1-leeman.duncan@gmail.com>
 <f0c9b3ff-7d93-9c2b-d405-e52fb4aa8c37@oracle.com>
Message-ID: <e8bc1385-7e8d-40e5-76ab-0086fcd1ea12@oracle.com>
Date: Wed, 4 Nov 2020 15:37:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <f0c9b3ff-7d93-9c2b-d405-e52fb4aa8c37@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=2 mlxscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 phishscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011040154
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 mlxscore=0
 suspectscore=2 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=999 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011040154
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=OJXYvYb0;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 11/4/20 3:33 PM, Mike Christie wrote:
> On 9/18/20 4:09 PM, Lee Duncan wrote:
>> From: Lee Duncan <lduncan@suse.com>
>>
>> iSCSI NOPs are sometimes "lost", mistakenly sent to the
>> user-land iscsid daemon instead of handled in the kernel,
>> as they should be, resulting in a message from the daemon like:
>>
>>> iscsid: Got nop in, but kernel supports nop handling.
>>
>> This can occur because of the new forward- and back-locks,
>> and the fact that an iSCSI NOP response can occur before
>> processing of the NOP send is complete. This can result
>> in "conn->ping_task" being NULL in iscsi_nop_out_rsp(),
>> when the pointer is actually in the process of being set.
>>
>> To work around this, we add a new state to the "ping_task"
>> pointer. In addition to NULL (not assigned) and a pointer
>> (assigned), we add the state "being set", which is signaled
>> with an INVALID pointer (using "-1").
>>
>> Signed-off-by: Lee Duncan <lduncan@suse.com>
>> ---
>> =C2=A0 drivers/scsi/libiscsi.c | 11 ++++++++++-
>> =C2=A0 include/scsi/libiscsi.h |=C2=A0 3 +++
>> =C2=A0 2 files changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>> index 1e9c3171fa9f..5eb064787ee2 100644
>> --- a/drivers/scsi/libiscsi.c
>> +++ b/drivers/scsi/libiscsi.c
>> @@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn,=20
>> struct iscsi_hdr *hdr,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 task->conn->session->age);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> +=C2=A0=C2=A0=C2=A0 if (unlikely(READ_ONCE(conn->ping_task) =3D=3D INVAL=
ID_SCSI_TASK))
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 WRITE_ONCE(conn->ping_task, =
task);
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!ihost->workq) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (iscsi_prep_mg=
mt_task(conn, task))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 goto free_task;
>> @@ -941,6 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn=20
>> *conn, struct iscsi_nopin *rhdr)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct iscsi_nopo=
ut hdr;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct iscsi_task *task;
>> +=C2=A0=C2=A0=C2=A0 if (!rhdr) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (READ_ONCE(conn->ping_tas=
k))
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retu=
rn -EINVAL;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 WRITE_ONCE(conn->ping_task, =
INVALID_SCSI_TASK);
>> +=C2=A0=C2=A0=C2=A0 }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!rhdr && conn->ping_task)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -EINVAL;
>> @@ -957,11 +965,12 @@ static int iscsi_send_nopout(struct iscsi_conn=20
>> *conn, struct iscsi_nopin *rhdr)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 task =3D __iscsi_conn_send_pdu(conn, (str=
uct iscsi_hdr *)&hdr,=20
>> NULL, 0);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!task) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!rhdr)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 WRIT=
E_ONCE(conn->ping_task, NULL);
>=20
> I don't think you need this. If __iscsi_conn_send_pdu returns NULL, it=20
> will have done __iscsi_put_task and done this already.

Ignore that. That is iscsi_complete_task that would do it.

>=20
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 iscsi_conn_printk=
(KERN_ERR, conn, "Could not send nopout\n");
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -EIO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else if (!rhdr) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* only track our=
 nops */
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 conn->ping_task =3D task;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 conn->last_ping =
=3D jiffies;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
> Why in the send path do we always use the READ_ONCE/WRITE_ONCE, but in=20
> the completion path like in iscsi_complete_task we don't.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/e8bc1385-7e8d-40e5-76ab-0086fcd1ea12%40oracle.com.
