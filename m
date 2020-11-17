Return-Path: <open-iscsi+bncBDZ5D6GN2YDBBZ5VZX6QKGQEAHS2OEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-f187.google.com (mail-pg1-f187.google.com [209.85.215.187])
	by mail.lfdr.de (Postfix) with ESMTPS id 160B82B5904
	for <lists+open-iscsi@lfdr.de>; Tue, 17 Nov 2020 06:08:57 +0100 (CET)
Received: by mail-pg1-f187.google.com with SMTP id a20sf5884306pgb.21
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Nov 2020 21:08:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605589735; cv=pass;
        d=google.com; s=arc-20160816;
        b=r9DsDsSO1WJ8rKzEpNYuY8RJvmA2HV7YnXNx2f5CX2/jcFV8esF+bQiAW9cCEe6lHn
         z33sc6Xnm4kR8jT3rE4/rG1QjdVyPzmR8HuffSR2W547/dSxsOnxD75HPYOCGp+7XViB
         X4Rxf5e+j/FBdKsZJ2C225kPk9+oWtbCzhhIyi6BNXVNNllWMGhFneiE+q/zNaeqWXZP
         zbGAf4p8VrrW+aMboL/1OFW7XrG04PBvZgpZU4BxGia4xUO/QGQleWtzx0ge8uRvwYLN
         +YAvIp8Mt5KpOv4C683iShHdN43RxShP8Ls0xb7pZ/l96LSDuwhNSZtquQAfmtt2Sjo2
         A0Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:references:subject:cc:to:sender:from:date:message-id
         :mime-version;
        bh=Jv71s8lJRMCfkwqrErN5Foss0sCWovsfr5klj7RD0t8=;
        b=hmOsWYv+/E8qgDIylfCgvg4X0iaQ0d6GVLmd30m7hi5udlv1engzRS/PQXy2zmzuE8
         bvTetg9dhKi3OPDOHczUZSPHfb/Ff3K2diFCLpu8IZz8ySOH9BOhB5zr+vDGcD2dTrKg
         WuzGK7wXSVnG5bMI390erWMPoQJMH8FK8uwypwvZd4buPYwsTBxWpXP8w/GJoqSdtyFu
         OepO58H3O0rLvSP/dt9vAJuVxHyi8n/1CAIcecvUND08JV/NLsGzsF0+9W7YtzTwXijP
         pfNuSk7Lb7bYmzwZGgSlAbmWVT6PozmlnKfvOgGNppctL1rUtRUv/NSpf736X4WoLtk7
         Sm5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=y31QKlvU;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:from:sender:to:cc
         :subject:references:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jv71s8lJRMCfkwqrErN5Foss0sCWovsfr5klj7RD0t8=;
        b=bsXaTbDuHVdTM0jbTfuCMgv/ySe79BN/iVrpmj4edvaPW4s01P36B7vITCMIcqFVhR
         bNkTAz89Z9qgudG39UJpMmdxhBO0XLBbhZytKtnXWxFdIt8PLgGVWWS41DS6l3vHST1T
         goA3vPZtvHWqjVi+qVCfNLBx2i6fx72vcoZ4pa4VXSgymTwS35t0JqYPTZAwC2lnXzbu
         9ujoys4WFL0epERSAIuWi6iNWOVCyDyIBzDMt0F8J+8xdfuvp8xeMD5eU5cdhJsQCfQ3
         PuOe2hftjbXL9wp6N8iXLOzhE2okrSt73v/lgaSdwNnSwbygzaYl2D2JqtCaQLQF1pKU
         iiHA==
X-Gm-Message-State: AOAM532P2ce8ORBWOqBuZm96scVY4pozBZYDYnMH3OWEel5t3bWoM+ad
	NO1LC0edWbuOt5EGxDzJ+Tw=
X-Google-Smtp-Source: ABdhPJxvKV1ihgxcSdRp6krlIr62emglNnup09U4mDpMtm2OrXuft2vrZPyks2qWfJt2I/0KeA8X9w==
X-Received: by 2002:a63:9d8d:: with SMTP id i135mr2182644pgd.213.1605589735671;
        Mon, 16 Nov 2020 21:08:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:ea4d:: with SMTP id l13ls5459781pgk.0.gmail; Mon, 16 Nov
 2020 21:08:55 -0800 (PST)
X-Received: by 2002:a63:da18:: with SMTP id c24mr2188995pgh.12.1605589735065;
        Mon, 16 Nov 2020 21:08:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605589735; cv=none;
        d=google.com; s=arc-20160816;
        b=c/nQzzIY/wJGK723mjy0UBnOaPznWC3autV15NjOhXnhX3Jl79MF9sFla3Qb9qS3Kq
         6O579htmY0HialroXLMoWHRna87h8t6ErVBSIahBMFBdqm6mnrQxrSD5bmPA4cx2p2G7
         IlsOBJ2qxYs2pa9grZauZS/bweW+WRmx/0NVDn0cFEKT6YRWpd220eMAZf0rHKm5oj5O
         LNKeX9adSQAw+cUssBxCuPZoaiYyMjmySJdtq7EBGDmXZaNMwY/04t9VSTFPo4y2evCw
         gm55ldStaVvBBHTl0fMeIc9f1tIB+2Hmfyy4Jy32pXN1RE0i2mT7oQKaKAfnygxyeHRv
         HCkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :sender:from:date:message-id:mime-version:dkim-signature;
        bh=JPFAvW3nwCtBjHj95lKDgrg4Zm+QWmvC+LDlS0/00vw=;
        b=vnT06fHlHs3Iz6VI0W4uTuO+gOX2D4Q/P38t0TpGYNBf2vfFFCqmszUrL+OemwNNUl
         Aj6Hh3g6w2puk43ofW43LnfqfiLzdBFs9qjHQXg0EQzDw1prtj62j0q6GwykPIpGN6rX
         mBhosz0AjjTodbQMMT9m4+Cri+spBdpKuRTetcJezTZsZo7cbNnvrokgiM/lCfIR21vZ
         ++JZTN623h4en2U9CLjYonFh7NvxVqALeDiOdbyKynfnI8mfV/uWykIYgMY9D5By9zlZ
         32BNrxOtGQRKvMzMnWATIX2SezRNPYLhpEebXAmK3iwgQXW2sMez9boDIZ4ZIIJXx85W
         0YTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=y31QKlvU;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id d2si1420243pfr.4.2020.11.16.21.08.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 21:08:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gulam.mohamed@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH543Qe103066;
	Tue, 17 Nov 2020 05:08:53 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 34t7vn0gqc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2020 05:08:53 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH51Rcc110521;
	Tue, 17 Nov 2020 05:08:53 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 34ts0qcuhe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Nov 2020 05:08:52 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0AH58p0I010793;
	Tue, 17 Nov 2020 05:08:51 GMT
MIME-Version: 1.0
Message-ID: <48883f4d-edfa-4a8d-9d45-aa5225f82e57@default>
Date: Mon, 16 Nov 2020 21:08:45 -0800 (PST)
From: Gulam Mohamed <gulam.mohamed@oracle.com>
Sender: Gulam Mohamed <gulam.mohamed@oracle.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James
 E.J. Bottomley" <jejb@linux.ibm.com>,
        Martin Petersen
 <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Junxiao Bi <junxiao.bi@oracle.com>
Subject: RE: [PATCH] iscsi: Do Not set param when sock is NULL
References: <1a8aaa17-b1a3-4d6a-b87a-ff49d61a0d0b@default>
 <9df96d73-015c-4de6-96fa-2f315b066909@default>
In-Reply-To: <9df96d73-015c-4de6-96fa-2f315b066909@default>
X-Priority: 3
X-Mailer: Oracle Beehive Extensions for Outlook 2.0.1.9.1  (1003210) [OL
 16.0.5056.0 (x86)]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 bulkscore=0 suspectscore=0 spamscore=0 malwarescore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011170036
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011170036
X-Original-Sender: gulam.mohamed@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=y31QKlvU;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
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

Gentle reminder.

Regards,
Gulam Mohamed.

-----Original Message-----
From: Gulam Mohamed=20
Sent: Thursday, November 5, 2020 11:11 AM
To: Lee Duncan <lduncan@suse.com>; Chris Leech <cleech@redhat.com>; James E=
.J. Bottomley <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@ora=
cle.com>; open-iscsi@googlegroups.com; linux-scsi@vger.kernel.org; linux-ke=
rnel@vger.kernel.org
Cc: Junxiao Bi <junxiao.bi@oracle.com>
Subject: [PATCH] iscsi: Do Not set param when sock is NULL

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D
1. This Kernel panic could be due to a timing issue when there is a race be=
tween the sync thread and the initiator was processing of a login response =
from the target. The session re-open can be invoked from two places
          a.	Sessions sync thread when the iscsid restart
          b.	From iscsid through iscsi error handler
2. The session reopen sequence is as follows in user-space (iscsi-initiator=
-utils)
          a.	Disconnect the connection
          b.	Then send the stop connection request to the kernel which rele=
ases the connection (releases the socket)
          c.	Queues the reopen for 2 seconds delay
         d.	Once the delay expires, create the TCP connection again by call=
ing the connect() call
         e.	Poll for the connection
          f.	When poll is successful i.e when the TCP connection is establi=
shed, it performs
	i. Creation of session and connection data structures
	ii. Bind the connection to the session. This is the place where we assign =
the sock to tcp_sw_conn->sock
	iii. Sets the parameters like target name, persistent address etc .
	iv. Creates the login pdu
	v. Sends the login pdu to kernel
	vi. Returns to the main loop to process further events. The kernel then se=
nds the login request over to the target node
	g. Once login response with success is received, it enters into full featu=
re phase and sets the negotiable parameters like max_recv_data_length, max_=
transmit_length, data_digest etc . 3. While setting the negotiable paramete=
rs by calling "iscsi_session_set_neg_params()", kernel panicked as sock was=
 NULL

What happened here is
--------------------------------
1.	Before initiator received the login response mentioned in above point 2.=
f.v, another reopen request was sent from the error handler/sync session fo=
r the same session, as the initiator utils was in main loop to process furt=
her events (as=20
	mentioned in point 2.f.vi above).=20
2.	While processing this reopen, it stopped the connection which released t=
he socket and queued this connection and at this point of time the login re=
sponse was received for the earlier one
3.	The kernel passed over this response to user-space which then sent the s=
et_neg_params request to kernel
4.	As the connection was stopped, the sock was NULL and hence while the ker=
nel was processing the set param request from user-space, it panicked

Fix
----
1.	While setting the set_param in kernel, we need to check if sock is NULL
2.	If the sock is NULL, then return EPERM (operation not permitted)
3.	Due to this error handler will be invoked in user-space again to recover=
 the session

Signed-off-by: Gulam Mohamed <gulam.mohamed@oracle.com>
Reviewed-by: Junxiao Bi <junxiao.bi@oracle.com>
---
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c index df47=
557a02a3..fd668a194053 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -711,6 +711,12 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cl=
s_conn *cls_conn,
        struct iscsi_tcp_conn *tcp_conn =3D conn->dd_data;
        struct iscsi_sw_tcp_conn *tcp_sw_conn =3D tcp_conn->dd_data;

+       if (!tcp_sw_conn->sock) {
+               iscsi_conn_printk(KERN_ERR, conn,
+                               "Cannot set param as sock is NULL\n");
+               return -ENOTCONN;
+       }
+
        switch(param) {
        case ISCSI_PARAM_HDRDGST_EN:
                iscsi_set_param(cls_conn, param, buf, buflen);
--
2.18.4

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/48883f4d-edfa-4a8d-9d45-aa5225f82e57%40default.
